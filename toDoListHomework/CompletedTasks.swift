//
//  CompletedTasks.swift
//  toDoListHomework
//
//  Created by Elina Suslova on 4/1/18.
//  Copyright © 2018 Elina Suslova. All rights reserved.
//

import UIKit

class CompletedTasks: UITableViewController{
    var completedItems: [String] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return completedItems.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = completedItems[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemsCell") as! ItemCell
        cell.textLabel?.text = item
        cell.item = item
        
        return cell
    }
    
}
