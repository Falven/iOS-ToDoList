//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Francisco Aguilera on 7/22/15.
//  Copyright © 2015 Dapper-Apps LLC. All rights reserved.
//

import Foundation

class ToDoItem {
    
    let itemName: String?
    let creationDate: NSDate
    
    private var _completed: Bool
    private var _completionDate: NSDate?

    init(itemName: String? = nil) {
        self.itemName = itemName
        self.creationDate = NSDate()
        self._completed = false
        self._completionDate = nil
    }
    
    var completed: Bool {
        get {
            return self._completed
        }
        set {
            self._completed = newValue
            self._completionDate = self._completed ? NSDate() : nil;
        }
    }
    
    private(set) var completionDate: NSDate? {
        get {
            return self._completionDate
        }
        set {
            self._completionDate = newValue
        }
    }
}

extension ToDoItem : CustomStringConvertible {
    /// A textual representation of `self`.
    var description: String {
        get {
            return "ToDoItem(" + self.itemName! ?? "nil" + ")"
        }
    }
}
