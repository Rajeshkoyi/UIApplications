//
//  ViewController.swift
//  ToDoList
//
//  Created by techno krishna on 28/03/16.
//  Copyright © 2016 techno krishna. All rights reserved.
//

import UIKit

var ToDoTitle = [String]()
var ToDoList = [String]()
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    @IBOutlet weak var tableView: UITableView!
       
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ToDoList.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellData", forIndexPath: indexPath) as! CustomTableViewCell
            cell.titleLabel.text = ToDoTitle[indexPath.row]
            cell.textView.text = ToDoList[indexPath.row]
        
        return cell
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            ToDoTitle.removeAtIndex(indexPath.row)
            ToDoList.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Bottom)
        }
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    

}

