//
//  DailyViewController.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//

import UIKit

class DailyViewController: BaseViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var viewNav: NavigationView!
    
    // MARK: - Properties

    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    // MARK: - Action
    
}

extension DailyViewController {
    func setupUI() {
        //viewNav
        viewNav.title = "Cập nhật"
        viewNav.handleActionBack = {
            self.back()
        }
        viewNav.handleActionSearch = {
            self.push(vc: SearchViewController())
        }
    }
}
