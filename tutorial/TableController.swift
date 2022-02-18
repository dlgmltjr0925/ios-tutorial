//
//  TableController.swift
//  tutorial
//
//  Created by 이희석 on 2022/03/05.
//

import UIKit

class TableController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 몇개?
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 무엇?
        // 2가지
        // 1번 방법 - 임의의 셀 만들기
//        let tableViewCell = UITableViewCell.init(style: .default, reuseIdentifier: "Type1")
//
//        tableViewCell.textLabel?.text = "\(indexPath.row)"
//
//        return tableViewCell
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! Type1
        
        tableViewCell.label.text = "\(indexPath.row)"
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}
