//
//  HistoryViewController.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//

import UIKit

class HistoryViewController: BaseViewController {
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

extension HistoryViewController {
    func setupUI() {
        //viewNav
        viewNav.viewSearch.isHidden = true
        viewNav.handleActionBack = {
            self.back()
        }
    }
}
