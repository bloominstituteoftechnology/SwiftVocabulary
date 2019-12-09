//
//  Alert.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/6/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import UIKit
class Alert {
    static let instance = Alert() //provides a built in instance so Alert doesn't have to be instantiated where its called
    //static makes the property a member of the Type/Class (Alert) rather than a member of the instance
    
    
    //Previous commits were using class func. I wanted to make these changes because I copied this code from another project of mine. After looking at it carefully, I realized I didn't fully understand what was going on, as I had copied the code from a StackOverflow answer previously. So I educated myself, and made changes to the code based on my understanding before educating myself. In other words, I understand the code I've been using in previous commits now, but wanted to use something I understood before I was using code that I didn't understand
    
    //create and show an Alert (the keyword class before func could be used here in lieu of using the instance above. class and static basically achieve the same thing).
    func show(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
    
    //adds an alert with two text fields used to create a vocabulary word and returns the word in a completion block.
    func showWithInput(title: String, message: String, vc: UIViewController, complete: @escaping (_ result: VocabularyWord) -> Void) { //completion block explained below
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
    (_ result:VocabularyWord) - called here like complete(vocabWord): This allows the vocabulary word to be accessible to the View Controller where this is called once Done is pressed
 */
