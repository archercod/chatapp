//
//  ShadowView.swift
//  chatapp
//
//  Created by Marcin Pietrzak on 26/01/2018.
//  Copyright © 2018 Marcin Pietrzak. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        
        super.awakeFromNib()
    }

}
