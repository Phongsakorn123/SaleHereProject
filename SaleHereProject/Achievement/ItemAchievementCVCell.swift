//
//  ItemAchievementCVCell.swift
//  SaleHereProject
//
//  Created by Jay on 29/1/24.
//

import UIKit

class ItemAchievementCVCell: UICollectionViewCell {

    @IBOutlet weak var bgView: UIView! {
        didSet {
            bgView.backgroundColor = .white
            bgView.layer.borderWidth = 2
            bgView.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    @IBOutlet weak var image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
