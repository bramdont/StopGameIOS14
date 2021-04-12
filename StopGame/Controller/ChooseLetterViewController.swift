//
//  ChooseLetterViewController.swift
//  StopGame
//
//  Created by Bramdont José García Aponte on 10/4/21.
//

import UIKit

class ChooseLetterViewControler: UIViewController {
    
    @IBOutlet weak var letterTextField: UITextField!
    
    var roundsNumber = 0
    var letter : String? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        letter = nil
        letterTextField.text = nil
    }
    
    @IBAction func PlayButtonPressed(_ sender: UIButton) {
        
        
        if let letterChosen = letterTextField.text {
            if let singleLetter = letterChosen.first{
                
                self.letter = String(singleLetter)
                //performSegue(withIdentifier: "chooseLetterToGameScreen", sender: self)
                
            } else {
                print("Please, write an alphabetical letter. For example: A")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! GameViewController
        destinationVC.gameBrain.playingLetter = letter!
        destinationVC.gameBrain.totalRounds = roundsNumber
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if letter != nil {
            return true
        } else {
            return false
        }
    }
}
