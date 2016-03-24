//
//  AddToDoItemViewController.swift
//  ToDoList
//
//  Created by Francisco Aguilera on 7/22/15.
//  Copyright © 2015 Dapper-Apps LLC. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender as? UIBarButtonItem == self.saveButton && self.textField.text!.characters.count > 0 {
            let savedItem = ToDoItem(itemName: self.textField.text)
            let destinationViewController = segue.destinationViewController as! ToDoListTableViewController
            destinationViewController.toDoItems.append(savedItem)
            destinationViewController.tableView.reloadData()
        }
    }
}
