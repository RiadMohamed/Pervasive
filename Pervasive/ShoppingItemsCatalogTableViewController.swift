//
//  ShoppingItemListTableViewController.swift
//  Pervasive
//
//  Created by Riad Mohamed on 10/23/19.
//  Copyright © 2019 Riad Mohamed. All rights reserved.
//

import UIKit
import Firebase

class ShoppingItemsCatalogTableViewController: UITableViewController {
    
    var shoppingItemsList: [ShoppingItem] = []
    let db = Firestore.firestore()
    func defaultInit() {
        let defaultImage = UIImage(named: "defaultImage")!
        shoppingItemsList = [
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
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        tableView.separatorStyle = .singleLine
//        defaultInit()
        loadFromDatabase()
    }
    
    func loadFromDatabase() {
        db.collection(K.FStore.collectionName).order(by: K.FStore.priceField).addSnapshotListener { (querySnapshot, error) in
            self.shoppingItemsList = []
            if let e = error {
                print("Error found!! \(e)")
            } else {
                if let snapshotDocuments = querySnapshot?.documents {
                    for doc in snapshotDocuments {
                        let data = doc.data()
                        if let itemImageTitle = data[K.FStore.imageField] as? String, let itemTitle = data[K.FStore.nameField] as? String, let itemPrice = data[K.FStore.priceField] as? Double {
                            let newItem = ShoppingItem(UIImage(named: itemImageTitle) ?? UIImage(named: "defaultImage")!, itemTitle, itemPrice)
                            self.shoppingItemsList.append(newItem)
                            
                            DispatchQueue.main.async {
                                self.tableView.reloadData()
                                let indexPath = IndexPath(row: self.shoppingItemsList.count-1, section: 0)
                                self.tableView.scrollToRow(at: indexPath, at: .top , animated: false)
                            }
                        }
                    }
                }
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shoppingItemsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingItemCell", for: indexPath) as! ShoppingItemTableViewCell
        cell.itemImage.image = shoppingItemsList[indexPath.row].image
        cell.titleLabel.text = shoppingItemsList[indexPath.row].title
        cell.priceLabel.text = "$\(shoppingItemsList[indexPath.row].price)"

        // TODO: Configure the cell...
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "goToShoppingCart", sender: indexPath)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToShoppingCart" {
//            if let destVC = segue.destination as? ShoppingCartViewController, let indexPath = sender as? IndexPath {
//                let item = shoppingItemsList[indexPath.row]
//                destVC.shoppingItem = item
//            }
//        }
    }

}
