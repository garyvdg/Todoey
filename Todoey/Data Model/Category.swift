//
//  Category.swift
//  Todoey
//
//  Created by Gary Vandergaast on 2018-08-25.
//  Copyright © 2018 Gary Vandergaast. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
    
}
