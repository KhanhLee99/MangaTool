//
//  AppDelegate.swift
//  MangaTool
//
//  Created by Khánh on 23/05/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static let shared: AppDelegate = {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            
            fatalError("Cannot cast the AppDelegate")
        }
        return delegate
    }()

    var window: UIWindow?
    var tabVC: BaseTabbarController?
    var naviVC: BaseNavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
//        setRootView()
        setRootTabbar()
        return true
    }
}

extension AppDelegate {
    func setRootView() {
        window?.rootViewController = IntroduceViewController()
        self.window?.makeKeyAndVisible()
    }
    
    func setRootTabbar() {
        self.tabVC = BaseTabbarController()
        let mainVC = BaseNavigationController(rootViewController: tabVC!)
        window?.rootViewController = mainVC
        self.window?.makeKeyAndVisible()
    }
}

