//
//  TableViewController.swift
//  TableViewControllerPractice
//
//  Created by dopamint on 5/23/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    var sectionTitleList: [String] = ["전체 설정", "개인 설정", "기타"]
    var rowTitleList: [[String]] = [["공지사항", "실험실", "버전 정보"], ["개인/보안", "알림", "채팅", "멀티프로필"], ["고객센터/도움말"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "preferenceCell")
        self.navigationItem.title = "설정"

    }


    override func numberOfSections(in tableView: UITableView) -> Int {

        return sectionTitleList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return rowTitleList[section].count
    }

    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        print(#function)
//        return 80
//    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        print(#function)
            return sectionTitleList[section]
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: "preferenceCell")!
        let text = rowTitleList[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = text
//        cell.backgroundColor = .gray
        
//        if indexPath.row == 0 {
//            cell.textLabel?.text = text
//            cell.backgroundColor = .gray
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = text
//            cell.textLabel?.textColor = .green
//            cell.backgroundColor = .yellow
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = text
//            cell.backgroundColor = .orange
//        }
        
        cell.textLabel?.font = .systemFont(ofSize: 11)
//
//        cell.detailTextLabel?.text = "ㅇㅇ"
//        cell.detailTextLabel?.textColor = .blue
//        cell.detailTextLabel?.font = .systemFont(ofSize: 10)
        
        print(#function)
        
        return cell
    }
}
