//
//  ItemNewGoal.swift
//  SaleHereProject
//
//  Created by Jay on 29/1/24.
//

import UIKit

class ItemNewGoal: UITableViewCell {

    @IBOutlet weak var button: UIButton! {
        didSet {
            button.layer.cornerRadius = 10
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
