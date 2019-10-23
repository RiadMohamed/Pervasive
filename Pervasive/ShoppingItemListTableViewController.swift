//
//  ShoppingItemListTableViewController.swift
//  Pervasive
//
//  Created by Riad Mohamed on 10/23/19.
//  Copyright © 2019 Riad Mohamed. All rights reserved.
//

import UIKit

class ShoppingItemListTableViewController: UITableViewController {
    
    var shoppingItemsDefaultList: [ShoppingItem] = []
    func defaultInit() {
        let defaultImage = UIImage(named: "defaultImage")!
        shoppingItemsDefaultList = [
            ShoppingItem(defaultImage, "Title 1", 1.0),
            ShoppingItem(defaultImage, "Title 2", 2.0),
            ShoppingItem(defaultImage, "Title 3", 3.0)
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.register(UINib(nibName: "ShoppingItemTableViewCell", bundle: nil), forCellReuseIdentifier: "shoppingItemCell")
        tableView.separatorStyle = .singleLine
        defaultInit()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shoppingItemsDefaultList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingItemCell", for: indexPath) as! ShoppingItemTableViewCell
        cell.itemImage.image = shoppingItemsDefaultList[indexPath.row].image
        cell.titleLabel.text = shoppingItemsDefaultList[indexPath.row].title
        cell.priceLabel.text = shoppingItemsDefaultList[indexPath.row].price.description

        // TODO: Configure the cell...
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToShoppingCart", sender: indexPath)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToShoppingCart" {
            if let destVC = segue.destination as? ShoppingCartViewController, let indexPath = sender as? IndexPath {
                let item = shoppingItemsDefaultList[indexPath.row]
                destVC.shoppingItem = item
            }
        }
    }

}
