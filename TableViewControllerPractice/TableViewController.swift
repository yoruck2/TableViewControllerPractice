//
//  TableViewController.swift
//  TableViewControllerPractice
//
//  Created by dopamint on 5/23/24.
//

import UIKit

enum Preference: String, CaseIterable {
    case entire = "전체 설정"
    case personal = "개인 설정"
    case etc = "기타"
    
    var subOptions: [String] {
        switch self {
        case .entire:
            return ["공지사항", "실험실", "버전 정보"]
        case .personal:
            return ["개인/보안", "알림", "채팅", "멀티프로필"]
        case .etc:
            return ["고객센터/도움말"]
        }
    }
}

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "설정"
    }
}

extension TableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Preference.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Preference.allCases[section].subOptions.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Preference.allCases[section].rawValue
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "preferenceCell") else {
            return UITableViewCell()
        }
        let text = Preference.allCases[indexPath.section].subOptions[indexPath.row]
        
        cell.textLabel?.text = text
        cell.textLabel?.font = .systemFont(ofSize: 11)
        
        return cell
    }
}
