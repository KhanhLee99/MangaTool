//
//  SlideView.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//
//

import UIKit
import FSPagerView

class SlideView: UIView {
    
    // MARK: - IBOulet
    @IBOutlet weak var pvMain: FSPagerView!
    
    // MARK: - Properties
    let img: [String] = ["img1", "img2", "img3"]
    let pcMain = FSPageControl()
    
    // MARK: - init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        let view = Bundle.main.loadNibNamed("SlideView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
        setupUI()
    }
    
    //MARK: - Action
}

extension SlideView {
    func setupUI() {
        pvMain.delegate = self
        pvMain.dataSource = self
        registerCell()
        setupPageControl()
        setupFSPagerView()
    }
    
    func setupFSPagerView() {
        pvMain.automaticSlidingInterval = 2
        pvMain.decelerationDistance = 1
    }
    
    func setupPageControl() {
        let width:CGFloat = pvMain.frame.size.width
        let height:CGFloat = pvMain.frame.size.height
        pcMain.frame = CGRect(x: 0, y: 5*height/6, width: width, height: height/5)
        pvMain.addSubview(pcMain)
        pcMain.numberOfPages = 3
        pcMain.contentHorizontalAlignment = .center
        pcMain.itemSpacing = 10
        pcMain.interitemSpacing = 10
        pcMain.contentVerticalAlignment = .center
        pcMain.setFillColor(.darkGray, for: .selected)
        pcMain.setFillColor(.lightGray, for: .normal)
    }
}

extension SlideView: FSPagerViewDelegate {
    func registerCell() {
        pvMain.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    func pagerView(_ pagerView: FSPagerView, willDisplay cell: FSPagerViewCell, forItemAt index: Int) {
        pcMain.currentPage = index
    }
}

extension SlideView: FSPagerViewDataSource {
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return self.img.count
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: self.img[index])
        return cell
    }
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        pagerView.deselectItem(at: index, animated: true)
        print("clicked nek")
    }
}
