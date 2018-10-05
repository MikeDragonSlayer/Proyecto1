//
//  ViewController.swift
//  Proyecto1
//
//  Created by Usuario invitado on 27/9/18.
//  Copyright © 2018 MiguelSoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var ShopTable: UITableView!
    
    var items = ["The Witcher 3: Wild Hunt Complete Edition","Nier Automata","Battlefield V","Skyrim Special Edition"]
    var pics = ["TW","NA","BFV","S"]
    var price = ["$800","$1100","$1300","$700"]
    var buyItems = [] as! [Array<String>]
    var buyPrices = [] as! [Array<String>]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item1", for: indexPath) as! item1TableViewCell
        
        cell.name.text = items[indexPath.row]
        cell.picture.image = UIImage(named: pics[indexPath.row])
        cell.price.text = price[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(items[indexPath.row])
        let cell = tableView.cellForRow(at: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            let indexPath = ShopTable.indexPathForSelectedRow
            
            let detName = segue.destination as! SecondViewController
            detName.item = items[(indexPath?.row)!]
            let detPicture = segue.destination as! SecondViewController
            detPicture.image = UIImage(named: pics[(indexPath?.row)!])!
            let detPrice = segue.destination as! SecondViewController
            detPrice.price = price[(indexPath?.row)!]
        
    }
    
    @IBAction func unwindSecondView( segue: UIStoryboardSegue){
        
    }

    @IBAction func buy(_ sender: UIButton) {
        let indexPath = ShopTable.indexPathForSelectedRow
        buyItems.append([items[(indexPath?.row)!]])
        buyPrices.append([price[(indexPath?.row)!]])
    }
    
    
    
    
    
}
