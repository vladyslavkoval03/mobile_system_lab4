//
//  ViewController.swift
//  lab4
//
//  Created by Admin on 21.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBOutlet weak var flipCaunterLabel: UILabel!
    var flipCaunter = 0

    @IBOutlet var listButtons: [UIButton]!
    var listEmoji = ["🤓", "🤓", "👺", "👺", "🤖", "🤖"]
    
    func updateLabeleAndAddCaunt(){
        flipCaunter += 1
        flipCaunterLabel.text = "Flips: \(flipCaunter)"
    }
    
    func flipCard(emoj : String, button: UIButton){
        updateLabeleAndAddCaunt()
        if button.currentTitle == emoj{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }else{
            button.setTitle(emoj, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }
    }
    
    @IBAction func tachButton(_ sender: UIButton) {
        let indexButon = listButtons.firstIndex(of: sender) ?? 0
        flipCard(emoj: listEmoji[indexButon], button: sender)
        
        
    }
}

