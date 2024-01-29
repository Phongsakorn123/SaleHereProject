//
//  ItemGoalTableView.swift
//  SaleHereProject
//
//  Created by Jay on 28/1/24.
//

import UIKit

class ItemGoalTableView: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var itemGoalCV: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        itemGoalCV.delegate = self
        itemGoalCV.dataSource = self
        
        let nib = UINib(nibName: "ItemGoalCVCell", bundle: nil)
        itemGoalCV.register(nib, forCellWithReuseIdentifier: "ItemGoalCVCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemGoalCVCell", for: indexPath) as! ItemGoalCVCell
        if indexPath.item % 2 == 0 {
            cell.bgView.layer.borderColor = UIColor.green.cgColor
            cell.statusLabel.text = "Good"
            cell.statusLabel.textColor = .green
        } else {
            cell.bgView.layer.borderColor = UIColor.red.cgColor
            cell.statusLabel.text = "Unhappy"
            cell.statusLabel.textColor = .red
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 215, height: 163)
    }
    
    
}
