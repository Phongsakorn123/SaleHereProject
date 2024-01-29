//
//  ItemBaseOffer.swift
//  SaleHereProject
//
//  Created by Jay on 29/1/24.
//

import UIKit

class ItemBaseOffer: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var itemGoalCV: UICollectionView!
    
    var sectionNumber: Int?
    override func awakeFromNib() {
        super.awakeFromNib()
        itemGoalCV.delegate = self
        itemGoalCV.dataSource = self
        
        let nib = UINib(nibName: "ItemBaseOfferCVCell", bundle: nil)
        itemGoalCV.register(nib, forCellWithReuseIdentifier: "ItemBaseOfferCVCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemBaseOfferCVCell", for: indexPath) as! ItemBaseOfferCVCell
        if self.sectionNumber == 2 {
            cell.image.image = UIImage(named: "image_offer")
        } else if self.sectionNumber == 3 {
            cell.image.image = UIImage(named: "image_suggest")
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 271, height: 137)
    }
}
