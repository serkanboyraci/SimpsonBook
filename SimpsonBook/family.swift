//
//  family.swift
//  SimpsonBook
//
//  Created by Ali serkan Boyracı  on 21.09.2022.
//

import Foundation
import UIKit // UIImage gelmesi icin eklenmesi gerekli


// added family class
class family {
    var name : String
    var job : String
    var image : UIImage
    
    init (nameInit: String, jobInit: String, imageInit: UIImage) {
        name = nameInit
        job = jobInit
        image = imageInit
        
    }
}

