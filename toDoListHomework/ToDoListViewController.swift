//
//  ToDoListViewController.swift
//  toDoListHomework
//
//  Created by Elina Suslova on 3/4/18.
//  Copyright © 2018 Elina Suslova. All rights reserved.
//

import UIKit
import CoreData

class ToDoListViewController: UITableViewController{

    var items: [String] = []
    //var items: [NSManagedObject] = []
    var selected: String?
    var completed: Bool = false
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
 
    // MARK: - UITableViewDataSource

      /*override func tableView(_ tableView: UITableView,
                       numberOfRowsInSection section: Int) -> Int {
            return items.count
        }
    
       override func tableView(_ tableView: UITableView,
                       cellForRowAt indexPath: IndexPath)
            -> UITableViewCell {
                
                let item = items[indexPath.row]
                let cell =
                    tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                  for: indexPath)
                cell.textLabel?.text =
                    item.value(forKeyPath: "taskName") as? String
                return cell
        }
*/
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
       
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemsCell") as! ItemCell
        cell.textLabel?.text = item
        cell.item = item
       
        return cell
    }


    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "New Task",
                                      message: "Add a new task",
                                      preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Add",
                                       style: .default) {
                                        [unowned self] action in
                                        
                                        guard let textField = alert.textFields?.first,
                                            let newTask = textField.text else {
                                                return
                                        }
        
                                        self.items.append(newTask)
        
        self.tableView.reloadData()    }
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .default)
        
        alert.addTextField()
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
        
    }
    @IBAction func completedTask(_ sender: Any) {
        completed  = true
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = items[indexPath.row]
        performSegue(withIdentifier: "taskDisplay", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DisplayItemViewController {
            destination.item = selected
        }
    
        
        /* func save(taskName: String) {
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        // 1
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        // 2
        let entity =
            NSEntityDescription.entity(forEntityName: "TaskItem",
                                       in: managedContext)!
        
        let item = NSManagedObject(entity: entity,
                                     insertInto: managedContext)
        
        // 3
         item.setValue(taskName, forKeyPath: "taskName")
        
        
        // 4
        do {
            try managedContext.save()
            items.append(item)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }

    */

 
 
    /*override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = items[indexPath.row]
        //performSegue(withIdentifier: "fruitTransition", sender: self)
    }
*/
    

}
}

