//
//  MainWindowController.swift
//  ToDoApp
//
//  Created by MLS Discovery on 7/9/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSTableViewDataSource, NSTableViewDelegate {
    
    // MARK: - Variables
    var todos:[String]!
    
    // MARK: - IBOutlets
    @IBOutlet weak var taskTextField: NSTextField!
    @IBOutlet weak var tableView: NSTableView!
    
    // MARK: - IBActions 
    /** DOES THIS GET REPLACED WITH THE CALL TO doubleAction on the table view? */
    @IBAction func addButton(_ sender: NSButton) {
        if taskTextField.stringValue.characters.count > 0 {
            // what if the user removes the item from the list?
            // how to delete a cell?
            self.todos.append(taskTextField.stringValue)
            self.tableView.reloadData()
            self.taskTextField.stringValue = ""
        }
        
    }
    
    @IBAction func updateTask(_ sender: NSTextField) {
        self.todos[self.tableView.selectedRow] = sender.stringValue
        self.tableView.reloadData()
    }
    
    // MARK: - Life Cycle methods
    override var windowNibName: String {
        return "MainWindowController"
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        self.todos = Array()
        tableView.doubleAction = #selector(printName)
    }
    
    @IBAction func printName(sender: AnyObject) {
        print("sender \(sender)")
    }
    
    // MARK: - NSTableViewDataSource
    func numberOfRows(in tableView: NSTableView) -> Int {
        return self.todos.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        let todo = todos[row]
        return todo
    }
    
    
    // MARK: - NSTableViewDelegate
    
    // when do I need to emplmenet the blow function? the datasource code above is providing data but the app is also using binding could this be an issue?
    
/**   func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
 
    } */
}
