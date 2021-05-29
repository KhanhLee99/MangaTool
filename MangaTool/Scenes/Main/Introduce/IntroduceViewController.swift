//
//  IntroduceViewController.swift
//  MangaTool
//
//  Created by Khánh on 23/05/2021.
//

import UIKit

class IntroduceViewController: UIViewController {

    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Action
    @IBAction func actionConfirm(_ sender: UIButton) {
        AppDelegate.shared.setRootTabbar()
    }
}
