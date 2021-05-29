//
//  CategoryViewController.swift
//  MangaTool
//
//  Created by Khánh on 23/05/2021.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        return cell
    }
    

    @IBOutlet weak var tbMain: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tbMain.register(UINib(nibName: "CategoryCell", bundle: nil), forCellReuseIdentifier: "CategoryCell")
        tbMain.delegate = self
        tbMain.dataSource = self
        tbMain.rowHeight = 100
    }

}
