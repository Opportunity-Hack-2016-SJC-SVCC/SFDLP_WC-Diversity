//
//  WorkOptionTableViewCell.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit

class WorkOptionTableViewCell: UITableViewCell {

    @IBOutlet weak var checkMarkIcon: UIImageView!
    @IBOutlet weak var workOptionLabel: UILabel!
    
    var checkMarked : Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureWith(option : String) {
        self.workOptionLabel.text = option
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
    

}
