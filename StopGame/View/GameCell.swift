//
//  GameCell.swift
//  StopGame
//
//  Created by Bramdont José García Aponte on 10/4/21.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet weak var objectImageView: UIImageView!
    @IBOutlet weak var objectTitleLable: UILabel!
    @IBOutlet weak var objectTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
