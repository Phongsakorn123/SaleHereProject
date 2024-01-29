//
//  AchievementVC.swift
//  SaleHereProject
//
//  Created by Jay on 28/1/24.
//

import UIKit

class AchievementVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainTableView.delegate = self
        self.mainTableView.dataSource = self
        registerNibFile()
    }
    
    private func registerNibFile() {
        mainTableView.register(UINib(nibName: "ItemTitleAchievementTableView", bundle: nil), forCellReuseIdentifier: "ItemTitleAchievementTableView")
        mainTableView.register(UINib(nibName: "ItemAchievementCell", bundle: nil), forCellReuseIdentifier: "ItemAchievementCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTitleAchievementTableView", for: indexPath) as! ItemTitleAchievementTableView
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemAchievementCell", for: indexPath) as! ItemAchievementCell
            cell.tagVC = 0
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTitleAchievementTableView", for: indexPath) as! ItemTitleAchievementTableView
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 119
        case 1: return 152 * 3
        default: return UITableView.automaticDimension
        }
    }
}
