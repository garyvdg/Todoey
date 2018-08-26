//
//  Item.swift
//  Todoey
//
//  Created by Gary Vandergaast on 2018-08-25.
//  Copyright © 2018 Gary Vandergaast. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
