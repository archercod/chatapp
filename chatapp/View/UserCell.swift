//
//  UserCell.swift
//  chatapp
//
//  Created by Marcin Pietrzak on 01/02/2018.
//  Copyright © 2018 Marcin Pietrzak. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImage: UIImageView!
    
    var showing:Bool = false

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            self.checkImage.isHidden = false
        } else {
            self.checkImage.isHidden = true
        }
    }
    
    func configureCell(profileImage: UIImage, email: String, isSelected: Bool) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        if isSelected {
            if showing == false {
                self.checkImage.isHidden = false
                self.showing = true
            } else {
                self.checkImage.isHidden = true
                self.showing = false
            }
        }
    }

}
