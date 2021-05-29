//
//  BaseViewController.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension BaseViewController {
    func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func  push(vc: UIViewController) {
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
