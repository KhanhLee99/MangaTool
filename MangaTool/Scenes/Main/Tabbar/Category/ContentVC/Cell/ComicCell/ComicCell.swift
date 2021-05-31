//
//  ComicCell.swift
//  MangaTool
//
//  Created by NTD on 31/05/2021.
//

import UIKit

class ComicCell: UITableViewCell {

    // MARK: - IBOulet
    @IBOutlet weak var imgV: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension ComicCell {
    func setupUI() {
        imgV.layer.cornerRadius = 6.0
    }
}
