//
//  ToDoListViewController.swift
//  toDoListHomework
//
//  Created by Elina Suslova on 3/4/18.
//  Copyright © 2018 Elina Suslova. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    var items: [String] = ["send email","make a call"]
    var selected: String?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemsCell") as! ItemCell
        cell.textLabel?.text = item
        cell.item = item
        
        return cell
    }
    

}
