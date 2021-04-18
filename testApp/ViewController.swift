//
//  ViewController.swift
//  testApp
//
//  Created by Rafael Mejia on 4/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedButton = sender;
        
        let emojiDictionary = [
            "🤖": "Robot",
            "🤓": "Smarty",
            "👾": "Game"
        ]
        
        if let wordToLookup = selectedButton.titleLabel?.text{
            let meaning = emojiDictionary[wordToLookup]
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
        }
        
    }
    


}

