//
//  Alert.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/6/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import UIKit

extension UIViewController {
    /// Create and show an Alert
    func presentAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }

    /// Add an alert with two text fields used to create a vocabulary word and return the word in a completion block.
    func presentAlertWithInput(title: String, message: String, complete: @escaping (_ result: VocabularyWord) -> Void) { //completion block explained below
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.text = "Enter Word"
        }
        alert.addTextField { (textField) in
            textField.text = "Enter Definition"
        }
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { [weak alert] _ in // weak prevents self from holding reference after the alert has been dismissed (prevents retain cycle).
            if let word = alert?.textFields?[0].text {
                if let definition = alert?.textFields?[1].text {
                    let vocabWord = VocabularyWord(word: word, definition: definition)
                    complete(vocabWord)
                }
            }
        }))
        self.present(alert, animated: true)
    }
}
