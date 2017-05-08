//
//  SessionTableViewCell.swift
//  RepublicaApp
//
//  Created by Khaterine Castellano on 5/8/17.
//  Copyright © 2017 Kate Castellano. All rights reserved.
//

import UIKit

class SessionTableViewCell: UITableViewCell {
   
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    //MARK: Properties

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
