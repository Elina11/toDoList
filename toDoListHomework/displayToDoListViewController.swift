//
//  displayToDoListViewController.swift
//  toDoListHomework
//
//  Created by Elina Suslova on 4/1/18.
//  Copyright © 2018 Elina Suslova. All rights reserved.
//
import UIKit

class displayToDoListViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var item: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = item
    }
    
}
