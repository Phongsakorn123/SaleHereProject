//
//  HomeViewController.swift
//  SaleHereProject
//
//  Created by Jay on 28/1/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainTableView.delegate = self
        self.mainTableView.dataSource = self
        registerNibFile()
    }
    
    @objc func newGoalButtonTapped() {
        print("Button tapped!")
        let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "NewGoalVC") as! NewGoalVC
        let navController = UINavigationController(rootViewController: VC1) // Creating a navigation controller with VC1 at the root of the navigation stack.
        self.present(navController, animated:true, completion: nil)

    }
    
    private func registerNibFile() {
        mainTableView.register(UINib(nibName: "ItemGoalTableView", bundle: nil), forCellReuseIdentifier: "ItemGoalTableView")
        mainTableView.register(UINib(nibName: "ItemNewGoal", bundle: nil), forCellReuseIdentifier: "ItemNewGoal")
        mainTableView.register(UINib(nibName: "ItemBaseOffer", bundle: nil), forCellReuseIdentifier: "ItemBaseOffer")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemGoalTableView", for: indexPath) as! ItemGoalTableView
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemNewGoal", for: indexPath) as! ItemNewGoal
            cell.button.addTarget(self, action: #selector(newGoalButtonTapped), for: .touchUpInside)
            return cell
        case 2,3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemBaseOffer", for: indexPath) as! ItemBaseOffer
            cell.sectionNumber = indexPath.section
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemGoalTableView", for: indexPath) as! ItemGoalTableView
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 258
        case 1: return 65
        case 2, 3: return 137
        default: return 295
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 2:
            return "Base Offer"
        case 3:
            return "Sugges for you"
        default:
            return nil
        }
    }
}
