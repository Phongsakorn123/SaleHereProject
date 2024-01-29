//
//  ItemGoalCVCell.swift
//  SaleHereProject
//
//  Created by Jay on 28/1/24.
//

import UIKit

class ItemGoalCVCell: UICollectionViewCell {

    @IBOutlet weak var bgView: UIView! {
        didSet {
            bgView.backgroundColor = .white
            bgView.layer.borderWidth = 2
            bgView.layer.borderColor = UIColor.green.cgColor
            bgView.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
