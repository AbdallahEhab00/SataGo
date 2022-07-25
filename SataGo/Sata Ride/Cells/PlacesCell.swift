//
//  PlacesCell.swift
//  SataGo
//
//  Created by Abdallah Ehab on 21/07/2022.
//

import UIKit

class PlacesCell: UITableViewCell {

    @IBOutlet weak var headlineLocation: UILabel!
    
    @IBOutlet weak var LocationDetails: UILabel!
    
    @IBOutlet weak var locationImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
