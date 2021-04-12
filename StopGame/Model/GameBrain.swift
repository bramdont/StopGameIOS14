//
//  GameBrain.swift
//  StopGame
//
//  Created by Bramdont José García Aponte on 10/4/21.
//

import Foundation

struct GameBrain {
    var totalRounds: Int
    var currentRound = 0
    var playingLetter = ""
    
    // K in upper case refers to the Constant.swift file
    
    func getRowTitle(for row: Int) -> String {
        return K.Cell.objectCells[row]
    }
    
    func getImageName(for cellTitle: String) -> String {
        return K.Cell.imageCell[cellTitle]!
    }
    
    //Generate the correct placeholder for editField in each cell. Choose to use the A or AN article depending on the next word
    func getPlaceHolder(for word: String) -> String {
        let startingLetter = word.first?.uppercased()
        
        if startingLetter == "A" || startingLetter == "E" || startingLetter == "I" || startingLetter == "O" || startingLetter == "U" {
            return "Write an \(word.lowercased())"
        } else {
            return "Write a \(word.lowercased())"
        }
    }
    
}


