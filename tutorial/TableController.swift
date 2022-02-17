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
        let tableViewCell = UITableViewCell.init(style: .default, reuseIdentifier: "TableCellType1")
        
        tableViewCell.textLabel?.text = "\(indexPath.row)"
        
        return tableViewCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}
