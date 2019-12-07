//
//  Alert.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/6/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import UIKit
class Alert {
    //create and show an Alert
    class func showBasic(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
    
    //adds an alert with two text fields used to create a vocabulary word and returns the word in a completion block.
    class func withInput(title: String, message: String, vc: UIViewController, complete: @escaping (_ result:VocabularyWord) -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.text = "Enter Word"
        }
        alert.addTextField { (textField) in
            textField.text = "Enter Definition"
        }
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { [weak alert] (_) in
            if let word = alert?.textFields?[0].text {
                if let definition = alert?.textFields?[1].text {
                    let vocabWord = VocabularyWord(word: word, definition: definition)
                    complete(vocabWord)
                }                
            }
        }))
        vc.present(alert, animated: true)
    }
}

/*
 the completion block defined as a parameter in withInput() is explained as follows:
 
    @escaping: allows the block to execute even after the function has returned
    unnamed parameter (_ result:VocabularyWord) - called here like complete(vocabWord): This allows the vocabulary word to be accessible to the View Controller once Done is pressed
 */
