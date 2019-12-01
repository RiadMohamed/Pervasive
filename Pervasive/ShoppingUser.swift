//
//  ShoppingUser.swift
//  Pervasive
//
//  Created by Riad Mohamed on 11/29/19.
//  Copyright © 2019 Riad Mohamed. All rights reserved.
//

import Foundation

class ShoppingUser {
    let name: String
    let email: String
    let password: String
    let orders: [ShoppingOrder]
    
    init (name: String, email: String, password: String, orders: [ShoppingOrder]) {
        self.name = name
        self.email = email
        self.password = password
        self.orders = orders
    }
}
