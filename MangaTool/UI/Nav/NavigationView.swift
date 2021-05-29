//
//  NavigationView.swift
//  MangaTool
//
//  Created by Khánh on 29/05/2021.
//

import UIKit

class NavigationView: UIView {
    // MARK: - IBOulet
    @IBOutlet weak var viewBack: UIView!
    @IBOutlet weak var viewSearch: UIView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBInspectable var title: String? {
        get {
            return lbTitle.text
        }
        set {
            lbTitle.text = newValue
        }
    }
    // MARK: - Handle
    var handleActionBack: (() -> Void)?
    var handleActionSearch: (() -> Void)?
    
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
        let view = Bundle.main.loadNibNamed("NavigationView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
        setupUI()
    }
    
    // MARK: - Action
    @IBAction func actionBack(_ sender: UIButton) {
        handleActionBack?()
    }
    
    @IBAction func actionSearch(_ sender: UIButton) {
        handleActionSearch?()
    }
}

extension NavigationView {
    func setupUI() {
        
    }
}
