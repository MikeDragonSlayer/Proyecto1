//
//  ThirdViewController.swift
//  Proyecto1
//
//  Created by Usuario invitado on 4/10/18.
//  Copyright © 2018 MiguelSoto. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var checkout: UITableView!
    
    var item: String = ""
    var price: String = ""

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item1", for: indexPath) as! item2TableViewCell
        
        //cell.BItem.text = buyItems[indexPath.row]
        //cell.BPrice.text = buyPrices[indexPath.row]
        
        return cell
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    

}
