//
//  HomeCell.swift
//  MangaTool
//
//  Created by Khánh on 23/05/2021.
//

import UIKit

class HomeCellUpdate: UITableViewCell {

    // MARK: - IBOulet
    @IBOutlet weak var covUpdate: UICollectionView!
    
    // MARK: - Properties
    
    // MARK: -
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
}

extension HomeCellUpdate {
    func setupUI() {
        covUpdate.register(UINib(nibName: "HomeCellUpdateItem", bundle: nil), forCellWithReuseIdentifier: "HomeCellUpdateItem")
        covUpdate.delegate = self
        covUpdate.dataSource = self
    }
}

extension HomeCellUpdate: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let vc = HomeViewController()
        let data: [HomeStoryItem] = vc.listHomeStory[0]
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCellUpdateItem", for: indexPath) as! HomeCellUpdateItem
        return cell
    }
}

extension HomeCellUpdate: UICollectionViewDelegate {
    
}

extension HomeCellUpdate: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 192, height: 165)
    }
}
