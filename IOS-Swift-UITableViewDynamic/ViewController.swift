//
//  ViewController.swift
//  IOS-Swift-UITableViewDynamic
//
//  Created by Pooya on 2018-09-06.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {

    var tableData : [String] = []
    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for myIndex in 0 ... 20 {
            tableData.append("row number \(myIndex)")
        }
        
        tableView.dataSource = self
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cellText = tableData[indexPath.row]
        cell.textLabel?.text = cellText
        
        if  indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = UIColor.lightGray
        }
        return cell
    }


}

