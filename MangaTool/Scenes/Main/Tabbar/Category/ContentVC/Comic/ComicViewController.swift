//
//  ComicViewController.swift
//  MangaTool
//
//  Created by NTD on 30/05/2021.
//

import UIKit

class ComicViewController: BaseViewController {
    // MARK: - IBOulet
    @IBOutlet weak var tbMain: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension ComicViewController {
    func setupUI() {
        tbMain.register(UINib(nibName: "ComicCell", bundle: nil), forCellReuseIdentifier: "ComicCell")
        tbMain.delegate = self
        tbMain.dataSource = self
        tbMain.separatorStyle = .none
    }
}

// MARK: - UITableViewDataSource
extension ComicViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComicCell", for: indexPath) as! ComicCell
        cell.selectionStyle = .none
        return cell
    }
    
    
}

// MARK: - UITableViewDelegate
extension ComicViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175.0
    }
}
