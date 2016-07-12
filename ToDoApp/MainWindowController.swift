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
    @IBAction func addButton(_ sender: NSButton) {
        if taskTextField.stringValue.characters.count > 0 {
            self.todos.append(taskTextField.stringValue)
            self.tableView.reloadData()
        }
        
    }
    // MARK: - Life Cycle methods
    override var windowNibName: String {
        return "MainWindowController"
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        self.todos = Array()
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
    
    
}
