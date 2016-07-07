//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemsList = ["Bananas", "Apples", "Eggs", "Rolls"]
        let quantityList = [6, 4, 12, 4]
        shoppingList = makeShoppingList(itemsList, quantityOfItems: quantityList)
 
    }
    
    func makeShoppingList (itemsNeeded: [String], quantityOfItems: [Int]) -> [String] {
        var result: [String] = []
        var currentElementIndex = 0
        
        while currentElementIndex < itemsNeeded.count {
            let combined = "\(currentElementIndex + 1). \(quantityOfItems[currentElementIndex]) \(itemsNeeded[currentElementIndex])"
            result.append(combined)
            currentElementIndex += 1
        }

        return result
    }
    
    
}