//
//  MainWindowController.swift
//  ToDoApp
//
//  Created by MLS Discovery on 7/9/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSTableViewDataSource, NSTableViewDelegate {
    // MARK: - IBOutlets
    @IBOutlet weak var taskTextField: NSTextField!
    
    // MARK: - IBActions
    @IBAction func addButton(_ sender: NSButton) {
        if taskTextField.stringValue.characters.count > 0 {
            print(taskTextField.stringValue)
        }
        
    }
    // MARK: - Life Cycle methods
    override var windowNibName: String {
        return "MainWindowController"
    }

    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    // MARK: - NSTableViewDataSource
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: NSTableView, setObjectValue object: AnyObject?, for tableColumn: NSTableColumn?, row: Int) {
        
    }
    /*Must implement numberOfRowsInTableView: and tableView:objectValueForTableColumn:row:
*/
    
    // MARK: - NSTableViewDelegate
    
}
