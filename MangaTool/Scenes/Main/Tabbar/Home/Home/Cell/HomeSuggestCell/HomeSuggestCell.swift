//
//  HomeSuggestCell.swift
//  MangaTool
//
//  Created by Khánh on 30/05/2021.
//

import UIKit

class HomeSuggestCell: UITableViewCell {
    // MARK: - IBOulet
    @IBOutlet weak var covSuggest: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension HomeSuggestCell {
    func setupUI() {
        covSuggest.register(UINib(nibName: "HomeSuggestItemCell", bundle: nil), forCellWithReuseIdentifier: "HomeSuggestItemCell")
        covSuggest.delegate = self
        covSuggest.dataSource = self
    }
}

extension HomeSuggestCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeSuggestItemCell", for: indexPath) as! HomeSuggestItemCell
        return cell
    }
    
    
}

extension HomeSuggestCell: UICollectionViewDelegate {
    
}

extension HomeSuggestCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 192, height: 180)
    }
}
