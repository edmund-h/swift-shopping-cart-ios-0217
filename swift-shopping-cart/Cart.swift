//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//  Executed lovingly by Edmund Holderbaum 1/29/17

class Cart {
    
    var items : [Item]
    
    init () {
        self.items = []
    }
    
    /*Write a method named totalPriceInCents() that takes no arguments and returns an Int. This method should return the total cost of all the items in the items array. */
    
    func totalPriceInCents() -> Int {
        var total = 0
        for myItem in items {
            total += myItem.priceInCents
        }
        return total
    }
    
    /*Write a method named add(item:) that takes one argument of type Item and provides no return. This method should add the argument to the end of the items property array.*/
    
    func add (item: Item) {
        items.append(item)
    }
    
    /*Write a method named remove(item:) that takes one argument of type Item and provides no return. This method should remove an instance from the items array that matches the argument item.*/
    
    func remove (item: Item) {
        for (index, myItem) in items.enumerated() {
            if myItem.name == item.name {
                print (index)
                items.remove(at: index)
                break
            }
        }
    }
    
    /*Write a method named items(withName:) that takes one string argument (called name) and returns an array of type Item. This method should collect all of the items in the items property array whose name property matches the submitted string argument.*/
    
    func items(withName myName: String) -> [Item] {
        var myItems: [Item] = []
        for thisItem in items{
            if thisItem.name == myName {
                myItems.append(thisItem)
            }
        }
        return myItems
    }
    
    /*Write a method named items(withMinPrice:) that takes one integer argument (called price) and returns an array of type Item. This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.*/
    
    func items(withMinPrice myPrice: Int) -> [Item] {
        var myItems : [Item] = []
        for thisItem in items {
            if thisItem.priceInCents >= myPrice {
                myItems.append(thisItem)
            }
        }
        return myItems
    }
    
    /*Write a method named items(withMaxPrice:) that take one integer argument (called price) and return an array of type Item. The method should collect all of the items in the items property array whose priceInCents property is less than or equal to the submitted integer argument.*/
    
    func items(withMaxPrice myPrice: Int) -> [Item] {
        var myItems : [Item] = []
        for thisItem in items {
            if thisItem.priceInCents <= myPrice {
                myItems.append(thisItem)
            }
        }
        return myItems
    }
    
}
