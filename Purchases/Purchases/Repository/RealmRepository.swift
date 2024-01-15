 //
//  ServiceManager.swift
//  Purchases
//
//  Created by User on 1/6/24.
//

import RealmSwift
import Foundation

final class RealmRepository {
    
    private let realm: Realm = try! .init()
}

// MARK: - Purchase Repository Delegate

extension RealmRepository: PurchaseStore {
    func create(purchase: Purchase) throws {
        do {
            try realm.write {
                /// You can add an object array instead of
                realm.add(purchase)
            }
        } catch {
            throw error
        }
    }
    
    func read() throws -> [Purchase] {
        realm.objects(Purchase.self).toArray(type: Purchase.self)
    }
    
    func update(id: RealmSwift.ObjectId) throws { }
    
    func delete(id: RealmSwift.ObjectId) throws { }
}
