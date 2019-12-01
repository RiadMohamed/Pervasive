//
//  Constants.swift
//  Pervasive
//
//  Created by Riad Mohamed on 11/27/19.
//  Copyright © 2019 Riad Mohamed. All rights reserved.
//

import Foundation

struct K {
    static let appName = "Pervasive"
    static let cellIdentifier = "shoppingItemCell"
    static let cellNibName = "ShoppingItemTableViewCell"
    static let ordersCellNibName = "ShoppingOrdersCell"
    static let ordersCellIdentifier = "ShoppingOrdersCell"
    static let cartCellNibName = "ShoppingCartTableViewCell"
    static let cartCellIdentifier = "ShoppingCartCell"
    
    struct FStore {
        static let collectionName = "ShoppingItemsList"
        static let imageField = "Image"
        static let priceField = "Price"
        static let nameField = "Name"
    }
}
