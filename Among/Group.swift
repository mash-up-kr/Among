//
//  Group.swift
//  Among
//
//  Created by 김혜원 on 2017. 2. 3..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import Foundation
import RealmSwift

class Group: Object {
    dynamic var id: Int = 0
    dynamic var name: String = ""
    dynamic var completionPercent: Int = 0
    dynamic var entryCount: Int = 0
    dynamic var agreementPercent: Int = 0
    dynamic var linkUrl: String = ""
    dynamic var newGb: String = ""
//    dynamic var users: [String] = [""]
    
    
    
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    // Specify properties to ignore (Realm won't persist these)
    
    //  override static func ignoredProperties() -> [String] {
    //    return []
    //  }
}
