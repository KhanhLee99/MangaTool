//
//  HomeSuggestItemCell.swift
//  MangaTool
//
//  Created by Khánh on 30/05/2021.
//

import UIKit

class HomeSuggestItemCell: UICollectionViewCell {

    //MARK: - IBOulet
    @IBOutlet weak var imgV: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAuthor: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

}

extension HomeSuggestItemCell {
    func setupUI() {
        imgV.layer.cornerRadius = 6.0
    }
}
