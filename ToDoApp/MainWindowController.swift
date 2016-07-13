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
    }
    
    // MARK: - NSTableViewDataSource
    func numberOfRows(in tableView: NSTableView) -> Int {
        return self.todos.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        let todo = todos[row]
        return todo
    }
    
    func tableView(_ tableView: NSTableView,
                   setObjectValue object: AnyObject?,
                   for tableColumn: NSTableColumn?,
                   row: Int) {
//        print("WELL HELL \(object)")
    }
    
    // MARK: - NSTableViewDelegate
    func tableViewSelectionDidChange(_ notification: Notification) {
        let row = tableView.selectedRow
        if row == -1 {
           //add logic
            return
        }
        print(todos[row])
    }
    func tableViewSelectionIsChanging(_ notification: Notification) {
        //print("\(notification)")
    }
    
    func selectionShouldChange(in tableView: NSTableView) -> Bool {
        return true
    }
}
