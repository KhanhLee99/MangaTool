//
//  MyPointViewController.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//

import UIKit

class MyPointViewController: BaseViewController {

    // MARK: - IBOulet
    
    // MARK: - Properties
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Action
    @IBAction func acitonBack(_ sender: UIButton) {
        self.back()
    }
    @IBAction func acitonHistory(_ sender: UIButton) {
        self.push(vc: HistoryViewController())
    }
}

extension MyPointViewController {
    func setupUI() {
    }
}
