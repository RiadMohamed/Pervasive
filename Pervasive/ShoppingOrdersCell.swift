//
//  ShoppingOrdersCell.swift
//  Pervasive
//
//  Created by Riad Mohamed on 12/1/19.
//  Copyright © 2019 Riad Mohamed. All rights reserved.
//

import UIKit

class ShoppingOrdersCell: UITableViewCell {

    @IBOutlet weak var orderIDLabel: UILabel!
    @IBOutlet weak var orderDateLabel: UILabel!
    @IBOutlet weak var orderPriceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
