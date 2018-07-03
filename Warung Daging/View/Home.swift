//
//  Home.swift
//  Warung Daging
//
//  Created by Ananta Pratama on /1Jul/18.
//  Copyright © 2018 Ignitech. All rights reserved.
//

import UIKit

let drumstick = ProductModel(name: "Drumstick", price: "Rp. 20.000", image: "Drumstick")
let chickenWings = ProductModel(name: "Chicken Wings", price: "Rp. 35.000", image: "Chicken Wings")
let chickenNugget = ProductModel(name: "Chicken Nugget", price: "Rp. 50.000", image: "Chicken Nugget")
let baksoSuper = ProductModel(name: "Bakso Super", price: "Rp. 25.000", image: "Bakso Super")

class Home: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var favoriteProductCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    // Collection view reuse identifier
    let categoryReuseIdentifier = "categoryCell"
    let favoriteReuseIdentifier = "favoriteProductCell"
    
    // Collection view data source
    let categoryItems = ["Kambing", "Sapi", "Bebek", "Ayam"]
    let favoriteProducts = [drumstick, chickenWings, chickenNugget, baksoSuper]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Search bar styling
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = #colorLiteral(red: 0.7607843137, green: 0.1490196078, blue: 0.1490196078, alpha: 1)
        
        // Delegate assignment
        categoryCollectionView.delegate = self
        favoriteProductCollectionView.delegate = self
        
        //  Collection Views data source assignment
        categoryCollectionView.dataSource = self
        favoriteProductCollectionView.dataSource = self
        
    }
    
    // MARK: - UICollectionViewDataSource protocol
    
    // Tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // If statement for different collection view
        if (collectionView == categoryCollectionView) {
            return self.categoryItems.count
        }
        return self.favoriteProducts.count
    }
    
    // Make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // If statement for different collection view
        if (collectionView == categoryCollectionView) {
            
            // Get a reference to our storyboard cell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: categoryReuseIdentifier, for: indexPath as IndexPath) as! CategoryCollectionViewCell
            
            // Use the outlet in our custom class
            cell.label.text = self.categoryItems[indexPath.item]
            cell.image.image = UIImage(named: self.categoryItems[indexPath.item])
            
            return cell
            
        } else {
            
            // Get a reference to our storyboard cell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: favoriteReuseIdentifier, for: indexPath as IndexPath) as! FavoriteCollectionViewCell
            
            //Use the outlet in our custom class
            cell.productImage.image = UIImage(named: self.favoriteProducts[indexPath.item].productImage)
            cell.productName.text = self.favoriteProducts[indexPath.item].productName
            cell.productPrice.text = self.favoriteProducts[indexPath.item].productPrice
            
            return cell
            
        }
        
    }
    
    // Cell on selected action
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // If statement for different collection view
        if (collectionView == categoryCollectionView) {
            
            // Navigate to category screen
            let storyboard = self.storyboard
            let controller = storyboard?.instantiateViewController(withIdentifier: "category") as! Category
            controller.productCategoryLabel = self.categoryItems[indexPath.item]
            self.show(controller, sender: nil)
            
        }
    }
    
}
