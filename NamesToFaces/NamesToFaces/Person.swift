//
//  Person.swift
//  NamesToFaces
//
//  Created by Anurag Tyagi on 20/06/24.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
