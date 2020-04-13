//
//  AddModel.swift
//  Swift Vocabulary
//
//  Created by Marissa Gonzales on 4/13/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit


class Alert {
    static let instance = Alert()
    
    
    
    func show(title: String, message: String, vc: UIViewController) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        vc.present(alert, animated: true)
    }
    
    //adds an alert with two text fields used to create a vocabulary word and returns the word in a completion block.
    func showWithInput(title: String, message: String, vc: UIViewController, complete: @escaping (_ result: Vocabulary) -> Void) { //completion block explained below
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.text = "Enter Word"
        }
        alert.addTextField { (textField) in
            textField.text = "Enter Definition"
        }
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { [weak alert] (_) in //weak prevents self from holding reference after the alert has been dismissed (prevents retain cycle).
            if let word = alert?.textFields?[0].text {
                if let definition = alert?.textFields?[1].text {
                    let vocabWord = Vocabulary(word: word, definition: definition)
                    complete(vocabWord)
                }
            }
        }))
        vc.present(alert, animated: true)
    }
}
