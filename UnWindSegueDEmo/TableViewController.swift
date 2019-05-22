//
//  TableViewController.swift
//  UnWindSegueDEmo
//
//  Created by User on 22/05/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var dataArray : [String] = ["one", "two","three","four"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = dataArray[indexPath.row]
        
        return cell
    }
    
    @IBAction func unwindSegue(_ sender : UIStoryboardSegue){
        if sender.source is UnwindViewController {
            if let senderVC = sender.source as? UnwindViewController {
                dataArray.append(senderVC.dataPass)
            }
            tableView.reloadData()
        }
    }
    
}
