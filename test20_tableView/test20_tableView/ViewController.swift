//
//  ViewController.swift
//  test20_tableView
//
//  Created by admin on 3/4/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    let people = [
        ("aa", "Beijing"),
        ("bb", "Shanghai"),
        ("cc", "Shenzhen")
    ]
    
    let people2 = [
        ("11", "Beijing"),
        ("22", "Shanghai"),
        ("33", "Shenzhen")
    ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return people.count
        } else {
            return people2.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        if (indexPath.section == 0) {
            var (name, location) = people[indexPath.row]
            cell.textLabel?.text = name
        } else {
            var (name, location) = people2[indexPath.row]
            cell.textLabel?.text = name
        }
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "first"
        } else {
            return "second"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

