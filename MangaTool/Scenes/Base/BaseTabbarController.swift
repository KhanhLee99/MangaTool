//
//  BaseTabbarController.swift
//  MangaTool
//
//  Created by Khánh on 23/05/2021.
//

import UIKit

class BaseTabbarController: UITabBarController {

    //MARK: - Properties
    var tabBarHeight: CGFloat = 0
    var padding: CGFloat = 5
    var paddingTitle: CGFloat = 5
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension BaseTabbarController {
    func setupUI() {
        let homeVC = HomeViewController()
        let categoryVC = CategoryViewController()
        let discoverVC = DiscoverViewController()
        let bookcaseVC = BookcaseViewController()
        let personalVC = PersonalViewController()
        
        homeVC.title = "Trang chủ"
        categoryVC.title = "Phân loại"
        discoverVC.title = "Khám phá"
        bookcaseVC.title = "Tủ sách"
        personalVC.title = "Tôi"
        
        self.setViewControllers([homeVC, categoryVC, discoverVC, bookcaseVC, personalVC], animated: true)
        self.tabBar.barTintColor = UIColor(hexString: "F9F9F9")
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = UIColor(hexString: "EB4153")
        tabBarHeight = self.tabBar.frame.height + padding
    }
}
