//
//  PhotoListCollectionViewCell.swift
//  MarkkAssignment_PrachiGade
//
//  Created by Prachi Gade on 01/11/20.
//

import UIKit

class PhotoListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgContainerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.imgContainerView.layer.cornerRadius = 8.0
        self.imgContainerView.layer.masksToBounds = true
        
        self.layer.shadowColor = UIColor.white.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 1.0
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }
}
