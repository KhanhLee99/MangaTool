//
//  CategoryViewController.swift
//  MangaTool
//
//  Created by Khánh on 23/05/2021.
//

import UIKit
import Parchment

struct PagingCustomItem {
    let index: Int
    let title: String
    let vc: UIViewController
    var height: CGFloat
    
    init(index: Int, title: String, vc: UIViewController, height: CGFloat) {
        self.index = index
        self.title = title
        self.vc = vc
        self.height = height
    }
    
    func item() -> PagingIndexItem {
        return PagingIndexItem(index: index, title: title)
    }
}

class CategoryViewController: UIViewController {
    
    //MARK: - Properties
//    var viewControllers: [PagingCustomItem] = []
    let pagingViewController = PagingViewController()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}

extension CategoryViewController {
    func setupUI() {
//        let vc1 = ComicViewController()
//        let item1 = PagingCustomItem(index: 0, title: "Truyen Tranh", vc: vc1, height: 500)
//        let vc2 = ChatStoryViewController()
//        let item2 = PagingCustomItem(index: 1, title: "Truyen Chat", vc: vc2, height: 500)
//        let vc3 = NovelViewController()
//        let item3 = PagingCustomItem(index: 2, title: "Tieu Thuyet", vc: vc3, height: 500)
//        viewControllers = [item1, item2, item3]
        let  viewControllers = [
            ComicViewController(),
            ChatStoryViewController(),
            NovelViewController(),
        ]
        let pagingViewController = PagingViewController(viewControllers: viewControllers)
        addChild(pagingViewController)
        view.addSubview(pagingViewController.view)
//        view.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
    }
}

//import Parchment
//import UIKit
//
//// This is the simplest use case of using Parchment. We just create a
//// bunch of view controllers, and pass them into our paging view
//// controller. FixedPagingViewController is a subclass of
//// PagingViewController that makes it much easier to get started with
//// Parchment when you only have a fixed array of view controllers. It
//// will create a data source for us and set up the paging items to
//// display the view controllers title.
//class BasicViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let viewControllers = [
//            ContentViewController(index: 0),
//            ContentViewController(index: 1),
//            ContentViewController(index: 2),
//            ContentViewController(index: 3),
//        ]
//
//        let pagingViewController = PagingViewController(viewControllers: viewControllers)
//
//        // Make sure you add the PagingViewController as a child view
//        // controller and constrain it to the edges of the view.
//        addChild(pagingViewController)
//        view.addSubview(pagingViewController.view)
//        view.constrainToEdges(pagingViewController.view)
//        pagingViewController.didMove(toParent: self)
//    }
//}
