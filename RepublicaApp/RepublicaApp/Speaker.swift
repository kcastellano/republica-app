//
//  Speaker.swift
//  RepublicaApp
//
//  Created by Khaterine Castellano on 5/8/17.
//  Copyright © 2017 Kate Castellano. All rights reserved.
//

import UIKit

class Speaker {
    
    //MARK: Properties
    
    var name: String
    var photo : UIImage?
    var ocupation : String
    
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, ocupation: String) {
       
        // Initialize properties
        
        self.name = name
        self.photo = photo
        self.ocupation = ocupation
    }
    
}
