//
//  PurchaseRepository.swift
//  Purchases
//
//  Created by User on 1/6/24.
//

import RealmSwift
import Foundation

protocol PurchaseStore {
    func create(purchase: Purchase) throws
    func read() throws -> [Purchase]
    func update(id: ObjectId, name: String, desc: String, price: Int, date: Int) throws
    func delete(by id: String) throws
    func get(by id: String) throws -> Purchase
}
