//
//  Group.swift
//  RealmProject
//
//  Created by Karin Prater on 12.03.22.
//

import Foundation
import RealmSwift

final class Group: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var _id: ObjectId
    
    @Persisted var items = RealmSwift.List<Item>()

}
