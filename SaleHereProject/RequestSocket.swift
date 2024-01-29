import Foundation
import SocketIO

class RequestSocket {
    private var socket: SocketIOClient?
    
    public func setupSocket(onComplete: @escaping (String, [Any]) -> Void, onFailure: @escaping (Error) -> Void) {
        let manager = SocketManager(socketURL: URL(string: "wss://px-socket-emitter.saleherethailand.com")!, config: [.log(true), .compress])
        socket = manager.defaultSocket

        addSocketHandlers { event, data in
            onComplete(event, data)
        }
        
        connectSocket()
    }

    private func addSocketHandlers(onComplete: @escaping (String, [Any]) -> Void) {
        socket?.on(clientEvent: .connect) { _, _ in
            print("Socket connected")
        }
        
        socket?.on(clientEvent: .error) { _, _ in
            print("Socket error")
        }
        
        socket?.on("new-notification") { data, ack in
            print("Received message from server: \(data)")
            
        }
    }

    private func connectSocket() {
        socket?.connect()
    }
}
