//
//  ItemTextfieldCell.swift
//  SaleHereProject
//
//  Created by Jay on 29/1/24.
//

import UIKit

class ItemTextfieldCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView! {
        didSet {
            bgView.backgroundColor = .white
            bgView.layer.borderWidth = 1
            bgView.layer.borderColor = UIColor.red.cgColor
        }
    }
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var rightButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
