//
//  SearchViewController.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//

import UIKit

class SearchViewController: BaseViewController {

    // MARK: - IBOutlet
    
    // MARK: - Properties

    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    // MARK: - Action
    @IBAction func actionCancle(_ sender: UIButton) {
        self.back()
    }
}

extension SearchViewController {
    func setupUI() {
        
    }
}
