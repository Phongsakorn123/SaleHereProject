//
//  TabBarViewController.swift
//  SaleHereProject
//
//  Created by Jay on 28/1/24.
//

import UIKit

class TabBarViewController: UITabBarController {
    var homeViewController: HomeViewController?
    var walletViewController: WallletViewController?
    var achievementVC: AchievementVC?
    var profileViewController: ProfileViewController?
    var subViewController: [UIViewController] = []
    
    var requestSocket = RequestSocket()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.requestSocket.setupSocket { event, data  in
            print("succeed -> \(data)")
            self.onSetupComplete(event: event, data: data)
        } onFailure: { error in
            print("error")
        }
    }
    
    private func onSetupComplete(event: String, data: [Any]) {
        switch event {
        case "new-notification":
            print("Badges count -> \(data)")
            if let tabBarItems = self.tabBarController?.tabBar.items {
                let index = 3
                tabBarItems[index].badgeValue = "badge count from data"
            }
            break
        default:
            break
        }
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            print("Home")
        case 1:
            print("wallet")
        case 2:
            print("achievement")
        case 3:
            print("profile")
        default:
            print("Not page")
        }
    }
    

    
}
