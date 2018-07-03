//
//  Category.swift
//  Warung Daging
//
//  Created by Ananta Pratama on /3Jul/18.
//  Copyright © 2018 Ignitech. All rights reserved.
//

import UIKit

class Category: UIViewController {
    
    var productCategoryLabel: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = productCategoryLabel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
