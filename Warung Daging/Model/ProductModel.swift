//
//  ProductModel.swift
//  Warung Daging
//
//  Created by Ananta Pratama on /3Jul/18.
//  Copyright © 2018 Ignitech. All rights reserved.
//

class ProductModel {
    
    var productName: String
    var productPrice: String
    var productImage: String
    
    init(name productName: String, price productPrice: String, image productImage: String) {
        self.productName = productName
        self.productPrice = productPrice
        self.productImage = productImage
    }
    
}
