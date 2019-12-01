//
//  ShoppingOrder.swift
//  
//
//  Created by Riad Mohamed on 11/29/19.
//

import Foundation

class ShoppingOrder {
    let location: (String, String)
    let date: Date
    let items: [ShoppingItem]
    var total: Double = 0
    let id: Int64
    static var counter = 0
    
    init(lat: String, lon: String, items: [ShoppingItem]) {
        date = Date()
        location = (lat, lon)
        self.items = items
        for item in items {
            total += item.price
        }
        ShoppingOrder.counter += 1
        self.id = Int64(ShoppingOrder.counter)
    }
}
