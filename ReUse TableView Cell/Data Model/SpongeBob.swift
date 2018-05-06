//
//  SpongeBob.swift
//  ReUse TableView Cell
//
//  Created by Dave on 5/4/18.
//  Copyright © 2018 High Tree Development. All rights reserved.
//

import UIKit

struct SpongeBob {
    let header: String
    let image: UIImage
    let footer: String
    
    init(header: String, image: UIImage, footer: String) {
        self.header = header
        self.image = image
        self.footer = footer
    }
}
