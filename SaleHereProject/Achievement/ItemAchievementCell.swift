//
//  ItemAchievementCell.swift
//  SaleHereProject
//
//  Created by Jay on 29/1/24.
//

import UIKit

class ItemAchievementCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var itemCV: UICollectionView!
    
    var tagVC: Int?
    let itemsPerRow: CGFloat = 3
    let sectionInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    override func awakeFromNib() {
        super.awakeFromNib()
        
        itemCV.delegate = self
        itemCV.dataSource = self
        
        let nib = UINib(nibName: "ItemAchievementCVCell", bundle: nil)
        itemCV.register(nib, forCellWithReuseIdentifier: "ItemAchievementCVCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemAchievementCVCell", for: indexPath) as! ItemAchievementCVCell
        if self.tagVC == 0 {
            cell.image.image = UIImage(named: "achieving-goals")
            cell.bgView.layer.cornerRadius = 0
        } else if self.tagVC == 1 {
            cell.image.image = UIImage(named: "icon_goal")
            cell.bgView.layer.cornerRadius = 10
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
         let availableWidth = collectionView.frame.width - paddingSpace
         let widthPerItem = availableWidth / itemsPerRow

         return CGSize(width: widthPerItem, height: widthPerItem)
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
         return sectionInsets
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return sectionInsets.left
     }
}
