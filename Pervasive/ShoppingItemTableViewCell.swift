//
//  ShoppingItemTableViewCell.swift
//  Pervasive
//
//  Created by Riad Mohamed on 10/23/19.
//  Copyright © 2019 Riad Mohamed. All rights reserved.
//

import UIKit

class ShoppingItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
