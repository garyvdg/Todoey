//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Gary Vandergaast on 2018-08-26.
//  Copyright © 2018 Gary Vandergaast. All rights reserved.

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
    var cell: UITableViewCell?
        override func viewDidLoad() {
        super.viewDidLoad()
            tableView.rowHeight = 80.0
    }
    
    // Tableview Data Source Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        
    cell.delegate = self
        
    return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
            guard orientation == .right else { return nil }
            
            let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
                
                print("Delete Cell")
                self.updateModel(at: indexPath)
            }
            
            deleteAction.image = UIImage(named: "delete-icon")
            
            return [deleteAction]
        }
        
        func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
            var options = SwipeOptions()
            options.expansionStyle = .destructive
            
            return options
        }
    
    func updateModel(at indexPath: IndexPath) {
        print("Item deleted from SuperClass")
    }
}

    


