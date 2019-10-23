//
//  ViewController.swift
//  Pervasive
//
//  Created by Riad Mohamed on 10/23/19.
//  Copyright © 2019 Riad Mohamed. All rights reserved.
//

import UIKit

class ShoppingCartViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    var shoppingItem: ShoppingItem? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let item = shoppingItem {
            titleLabel.text = item.title
            priceLabel.text = "\(item.price)"
        }
    }


}

