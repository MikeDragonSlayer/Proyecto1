//
//  SecondViewController.swift
//  Proyecto1
//
//  Created by Usuario invitado on 27/9/18.
//  Copyright © 2018 MiguelSoto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPicture: UIImageView!
    @IBOutlet weak var itemPrice: UILabel!
    
    var item: String = ""
    var image = UIImage()
    var price: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemName.text = item
        itemPicture.image = image
        itemPrice.text = price
    }
    
    
    
}
