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
        //Rounding textField corners and setting the right color
        objectTextField.layer.cornerRadius = 20.0
        objectTextField.layer.borderWidth = 2.0
        objectTextField.layer.borderColor = UIColor(named: K.textFieldBorderColor)?.cgColor
        
        //Round image corners
        objectImageView.layer.cornerRadius = 20.0
        objectImageView.layer.borderWidth = 2.0
        objectImageView.layer.borderColor = UIColor(named: K.imageViewBorderColor)?.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
