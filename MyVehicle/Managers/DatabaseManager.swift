//
//  DatabaseManager.swift
//  MyVehicle
//
//  Created by Александр Арсенюк on 08/04/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import RealmSwift


protocol DatabaseManagerProtocol {
    
    func saveModel(model: Object)
    
    func obtainModels<T: Object>() -> [T]
    
    func clearAll()
}


class DatabaseManager: DatabaseManagerProtocol {
  
    fileprivate lazy var mainRealm: Realm = {
        
        let config = Realm.Configuration(
            
            schemaVersion: 1,
            migrationBlock: { migration, oldSchemaVersion in
                if (oldSchemaVersion < 1) {
                    
                }
        })
        Realm.Configuration.defaultConfiguration = config
        return try! Realm(configuration: .defaultConfiguration)
    }()
    
    
    func obtainModels<T: Object>() -> [T] {
       
        
        let models = mainRealm.objects(T.self)
        return Array(models)
    }
    
    func saveModel(model: Object) {
        
        try! mainRealm.write {
            mainRealm.add(model)
        }
    }
    
    func clearAll() {
        
        try! mainRealm.write {
            mainRealm.deleteAll()
        }
    }
    
    
}


