//
//  RankingViewController.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//

import UIKit
import RxSwift
import RxCocoa

class RankingViewController: BaseViewController {

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

extension RankingViewController {
    func setupUI() {
        // viewNav
        viewNav.title = "Bảng Xếp Hạng"
        viewNav.handleActionBack = {
            self.back()
        }
        viewNav.viewSearch.isHidden = true
    }
}
