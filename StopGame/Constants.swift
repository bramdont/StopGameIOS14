//
//  Constants.swift
//  StopGame
//
//  Created by Bramdont José García Aponte on 10/4/21.
//

import Foundation

struct K {
    
    static let appName = "🚦 Stop Game 🚦"
    static let backgroundColor = "BackgroundColor"
    
    struct Cell {
        static let name = "ReusableCell"
        //static let image = "ReusableImage"
        static let  nibName = "GameCell"
        static let identifier = "ReusableCell"
        static let objectCells = ["Name", "Last Name", "Country", "Artist", "Animal", "Fruit"]
        static let imageCell = [
            "Name" : "Name",
            "Last Name" : "Name",
            "Country" : "Country",
            "Artist" : "Artist",
            "Animal" : "Animal",
            "Fruit" : "Fruit"]
        
    }
    
    struct gameScreen {
        static let icon = "🚦"
        static let title = "With letter:"
    }
}

