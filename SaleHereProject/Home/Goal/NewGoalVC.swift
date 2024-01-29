//
//  NewGoalVC.swift
//  SaleHereProject
//
//  Created by Jay on 29/1/24.
//

import UIKit

class NewGoalVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainTableView.delegate = self
        self.mainTableView.dataSource = self
        registerNibFile()
    }
    
    private func registerNibFile() {
        mainTableView.register(UINib(nibName: "ItemTitleGoalTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemTitleGoalTableViewCell")
        mainTableView.register(UINib(nibName: "ItemAchievementCell", bundle: nil), forCellReuseIdentifier: "ItemAchievementCell")
        mainTableView.register(UINib(nibName: "ItemTextfieldCell", bundle: nil), forCellReuseIdentifier: "ItemTextfieldCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTitleGoalTableViewCell", for: indexPath) as! ItemTitleGoalTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemAchievementCell", for: indexPath) as! ItemAchievementCell
            cell.tagVC = 1
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTextfieldCell", for: indexPath) as! ItemTextfieldCell
            cell.textField.placeholder = "Amount"
            cell.rightButton.setTitle("THB", for: .normal)
            cell.rightButton.setImage(nil, for: .normal)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTextfieldCell", for: indexPath) as! ItemTextfieldCell
            cell.textField.placeholder = "Select Date"
            cell.rightButton.setTitle(nil, for: .normal)
            cell.rightButton.setImage(UIImage(named: "icon_down"), for: .normal)
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTextfieldCell", for: indexPath) as! ItemTextfieldCell
            cell.textField.placeholder = "Select Account"
            cell.rightButton.setTitle(nil, for: .normal)
            cell.rightButton.setImage(UIImage(named: "icon_down"), for: .normal)
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTextfieldCell", for: indexPath) as! ItemTextfieldCell
            cell.textField.placeholder = "Amount"
            cell.rightButton.setTitle("THB", for: .normal)
            cell.rightButton.setImage(nil, for: .normal)
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemAchievementCell", for: indexPath) as! ItemAchievementCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 119
        case 1: return 152 * 3
        default: return 70
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 4 {
            return "Bank Account"
        } else {
            return nil
        }
    }
}
