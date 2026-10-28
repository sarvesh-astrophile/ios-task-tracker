//
//  SwiftBasics.swift
//  TaskTracker
//
//  Created by FCI on 28/10/26.
//

import Playgrounds

#Playground {
    var age: Int = 28
    var price: Double = 19.99
    var isActive: Bool = true
    var message: String = "Hello, world"

    var colors: [String] = ["Red", "Blue", "Green"]
    colors.append("fooo")

    var user: [String: String] = [
        "name": "Sarvesh",
        "Role": "Developer"
    ]

    func greet(){
        print("Hello, World!")
    }

    func calculateTotal(price: Double, quantity: Int) -> Double {
        return price * Double(quantity)
    }

    print(calculateTotal(price: 23, quantity: 11))
}
