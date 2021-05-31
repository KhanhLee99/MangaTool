//
//  CategoryViewController.swift
//  MangaTool
//
//  Created by Khánh on 23/05/2021.
//

import UIKit
import Parchment

class CategoryViewController: BaseViewController {
    // MARK: - IBOulet
    @IBOutlet weak var viewPageMenu: UIView!
    
    //MARK: - Properties
    var pagingViewController = PagingViewController()
    var viewControllers: [UIViewController] = [ComicViewController(), NovelViewController(), ChatStoryViewController()]
    let pagingTitle = ["Page1","Page2","Page3","Page1","Page2","Page3","Page1","Page2","Page3"]

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
     func handleWithDataSource() {
        
        // must implement datasource and 3 method above
        let pagingViewController = PagingViewController()
        pagingViewController.dataSource = self
        
        pagingViewController.textColor = UIColor.red
        pagingViewController.selectedTextColor = UIColor.blue
        pagingViewController.borderColor = UIColor.purple
        pagingViewController.indicatorColor = UIColor.yellow
        
        addChild(pagingViewController)
        viewPageMenu.addSubview(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
        pagingViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pagingViewController.view.leadingAnchor.constraint(equalTo: viewPageMenu.leadingAnchor),
            pagingViewController.view.trailingAnchor.constraint(equalTo: viewPageMenu.trailingAnchor),
            pagingViewController.view.bottomAnchor.constraint(equalTo: viewPageMenu.bottomAnchor),
            pagingViewController.view.topAnchor.constraint(equalTo: viewPageMenu.topAnchor)
        ])
    }

}

extension CategoryViewController {
    func setupUI() {
        handleWithDataSource()
    }
}

extension CategoryViewController: PagingViewControllerDataSource {
    func numberOfViewControllers(in pagingViewController: PagingViewController) -> Int {
        return pagingTitle.count
    }

    func pagingViewController(_: PagingViewController, viewControllerAt index: Int) -> UIViewController {
        return viewControllers[index]
    }

    func pagingViewController(_: PagingViewController, pagingItemAt index: Int) -> PagingItem {
        return PagingIndexItem(index: index, title: pagingTitle[index])
    }
}
