//
//  GameViewController.swift
//  StopGame
//
//  Created by Bramdont José García Aponte on 10/4/21.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var objectTableView: UITableView!
    
    var gameBrain = GameBrain(totalRounds: 0)
    var gameCell = GameCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO
        print(gameBrain.totalRounds)
        title = "\(K.gameScreen.icon) \(K.gameScreen.title) \(gameBrain.playingLetter) \(K.gameScreen.icon)"
        
        self.objectTableView.dataSource = self
        
        objectTableView.register(UINib(nibName:K.Cell.nibName, bundle: nil), forCellReuseIdentifier: K.Cell.identifier)
        //hide Table View separator
        //objectTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        objectTableView.backgroundColor = UIColor(named: K.backgroundColor)
    }
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        
    }
}

extension GameViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return K.Cell.objectCells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellTitle = gameBrain.getRowTitle(for: indexPath.row)
        let placeholderText = cellTitle.lowercased()
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.identifier, for: indexPath) as! GameCell
        
        cell.objectTitleLable.text = cellTitle
        cell.objectImageView.image = UIImage(imageLiteralResourceName: gameBrain.getImageName(for: cellTitle))
        cell.objectTextField.placeholder = gameBrain.getPlaceHolder(for: cellTitle)
        
        return cell
    }
}

extension GameViewController: UITableViewDelegate {
    
}
