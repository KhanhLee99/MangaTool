//
//  HomeCellUpdateItem.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//

import UIKit

class HomeCellUpdateItem: UICollectionViewCell {
    
    // MARK: - IBOulet
    @IBOutlet weak var imgV: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

}

extension HomeCellUpdateItem {
    func setupUI() {
        imgV.layer.cornerRadius = 6.0
    }
}
