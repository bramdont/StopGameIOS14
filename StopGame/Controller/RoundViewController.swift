//
//  RoundViewController.swift
//  StropGame
//
//  Created by Bramdont José García Aponte on 30/3/21.
//

import UIKit

class RoundViewController: UIViewController {
    
    @IBOutlet weak var roundsPickerView: UIPickerView!
    
    let roundsOptions = ["5 rounds", "10 rounds", "15 rounds"]
    var roundsSelected = 5 //El valor por defecto sera 5 rounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.roundsPickerView.dataSource = self
        self.roundsPickerView.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    
    @IBAction func chooseLetterPressed(_ sender: UIButton) {
    
        performSegue(withIdentifier: "roundsToLetterSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let roundsNum = self.roundsSelected
        let destinationVC = segue.destination as! ChooseLetterViewControler
        destinationVC.roundsNumber = roundsNum
    }
    
}

//MARK - UIPickerViewDelegate
extension RoundViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return roundsOptions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch roundsOptions[row] {
        case "5 rounds":
            roundsSelected = 5
        case "10 rounds":
            roundsSelected = 10
        case "15 rounds":
            roundsSelected = 15
        default:
            roundsSelected = 5
        }
        print(roundsSelected)
    }
}

//MARK - UIPickerViewDataSource protocol
extension RoundViewController: UIPickerViewDataSource {
    //This method is to set the number of columns the pickerView will have
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //This method is to set the number of rows the pickerView will have
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return roundsOptions.count
    }
    
    
}


