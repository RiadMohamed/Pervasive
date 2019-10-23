//
//  ShoppingItem.swift
//  Pervasive
//
//  Created by Riad Mohamed on 10/23/19.
//  Copyright © 2019 Riad Mohamed. All rights reserved.
//

import Foundation
import UIKit

class ShoppingItem {
    let image: UIImage
    let title: String
    let price: Double
    
    init(_ image: UIImage, _ title: String, _ price: Double) {
        self.image = image
        self.title = title
        self.price = price
    }
    
    
}
