//
//  HomeViewController.swift
//  MangaTool
//
//  Created by Khánh on 23/05/2021.
//

import UIKit

class HomeViewController: BaseViewController {
    //MARK: - IBOulet
    @IBOutlet weak var tbMain: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tbMainHeight: NSLayoutConstraint!
    
    // MARK: - Properties
    var listHomeSection: [HomeSection] = [
        HomeSection(title: "Hi! Bão Cập Nhật", more: "", image: ""),
        HomeSection(title: "BTV đề cử tâm huyết", more: "", image: ""),
        HomeSection(title: "Có thể bạn sẽ thích", more: "", image: ""),
    ]
    
    var listHomeStory: [[HomeStoryItem]] = [
        [
            HomeStoryItem(name: "Võ Thần Chủ Tế", image: "", author: ""),
            HomeStoryItem(name: "Đồng Tu Tiên Ma", image: "", author: ""),
            HomeStoryItem(name: "Luyện Khí Ba Nghìn Năm", image: "", author: ""),
            HomeStoryItem(name: "Tiệm Tạp Hoá Kỳ Quặc", image: "", author: ""),
            HomeStoryItem(name: "Chàng Rể Đệ Nhất", image: "", author: ""),
        ],
        [
            HomeStoryItem(name: "Bất ngờ bị cương thi mỹ nữ hút máu", image: "", author: "Cao Thủ Cương Thi"),
            HomeStoryItem(name: "Hệ thống cực mạnh từ trên trời rớt xuống", image: "", author: "Ngoại Qua Tiên Tôn"),
            HomeStoryItem(name: "Ngô Hoàng Tại Thượng", image: "", author: "Hôn ta một cái rồi ta sẽ nói"),
            HomeStoryItem(name: "Tất cả những kẻ từng chế giễu anh đều bị bẽ mặt", image: "", author: "Mắt Nhìn Thấu Chung Cực"),
        ],
        [
            HomeStoryItem(name: "Hắn - kẻ đã cuopứ đi nụ hôn đầu của cô", image: "", author: "Hoa Khôi Vương Bài"),
            HomeStoryItem(name: "Ác ma thị huyết đêm trăng tròn", image: "", author: "Ông Xã Khát Máu: Cô Dâu Gả Nhầm"),
            HomeStoryItem(name: "Em chồng, tránh xa tôi ra!", image: "", author: "Nhập. Cốt Noãn Hôn"),
            HomeStoryItem(name: "Ở cạnh anh mới thấy yên tâm", image: "", author: "Thiếu Soái Vợ Ngài Lại Trốn Rồi"),
        ]
    ]
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillLayoutSubviews() {
        super.updateViewConstraints()
        self.tbMainHeight?.constant = self.tbMain.contentSize.height
    }
    
    // MARK: - Action
    @IBAction func actionRanking(_ sender: UIButton) {
        self.push(vc: RankingViewController())
    }
    @IBAction func actionDaily(_ sender: UIButton) {
        self.push(vc: DailyViewController())
    }
    @IBAction func actionPoint(_ sender: UIButton) {
        self.push(vc: MyPointViewController())
    }
    @IBAction func actionBonus(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 2
    }
}

extension HomeViewController {
    func setupUI() {
        if #available(iOS 11.0, *) {
            scrollView.contentInsetAdjustmentBehavior = .never
        } else {
            automaticallyAdjustsScrollViewInsets = false
        }
        tbMain.register(UINib(nibName: "HomeCellUpdate", bundle: nil), forCellReuseIdentifier: "HomeCellUpdate")
        tbMain.register(UINib(nibName: "HomeSuggestCell", bundle: nil), forCellReuseIdentifier: "HomeSuggestCell")
        tbMain.register(UINib(nibName: "HomeHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "HomeHeaderView")
        tbMain.delegate = self
        tbMain.dataSource = self
        tbMain.separatorStyle = .none
        tbMain.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        
//        // footer section
//        let footerView = UIView()
//        footerView.backgroundColor = .red
//        tbMain.tableFooterView = footerView
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return listHomeSection.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCellUpdate", for: indexPath) as! HomeCellUpdate
            cell.selectionStyle = .none
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeSuggestCell", for: indexPath) as! HomeSuggestCell
        cell.selectionStyle = .none
        return cell
    }


}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 165.0
        }

        if indexPath.section == 1 {
            return 370.0
        }
        return 370.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HomeHeaderView") as! HomeHeaderView
//        if section == 0 {
            header.lbRight.isHidden = true
            header.lbLeft.text = listHomeSection[section].title
            return header
//        }
//
//        return nil
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.backgroundColor = .white
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 35.0
    }
}
