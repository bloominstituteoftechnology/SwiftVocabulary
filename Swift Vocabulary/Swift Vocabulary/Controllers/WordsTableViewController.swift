//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Sammy Alvarado on 4/8/20.
//  Copyright © 2020 Sammy Alvarado. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
//    override func viewDidLoad() {
//           super.viewDidLoad()
//           let alertController = UIAlertController(title: "Add Vocabulary", message: "Like to add a new word? click on the button below", preferredStyle: .alert)
//        
//        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (alertAction) in
//            print("cancel")
//        }))
//
//           
//       }
    
    
    
    var vocabWords: [VocabularyWord] = [
    VocabularyWord(word: "Array", definitions: "A data type that stores multiple values of the same type in an ordered list."),
    VocabularyWord(word: "Canvas", definitions: "The background of a storyboard where you add and arrange user interface (UI) elements."),
    VocabularyWord(word: "Class", definitions: "A piece of code that describes the behavior and properties common to any particular type of object, essentially providing a blueprint for the object."),
    VocabularyWord(word: "Constant", definitions: "A value that’s initialized once and cannot change, indicated in Swift by the let keyword."),
    VocabularyWord(word: "Data Model", definitions: "The representation or structure of data within an app"),
    VocabularyWord(word: "Back to the barn", definitions: "Back to base"),
    VocabularyWord(word: "Boxing", definitions: "Or to be boxed - originally a Cylon term. To download a Cylon's consciousness into a storage device instead of a new body. This can happen either as a punishment or for safety reasons, when said consciousness is deemed corrupted or too unstable to be downloaded into a new body."),
    VocabularyWord(word: "Code Blue!", definitions: "Internal security alarm call."),
    VocabularyWord(word: "Frack", definitions: "profanity. Same meaning as f-Word, used in the original Battlestar Galactica (1978) series"),
    VocabularyWord(word: "Krypter!", definitions: "Distress call equivalent to MayDay. Usually repeated in quick succession: Krypter! Krypter! Krypter!"),
    VocabularyWord(word: "Beast", definitions: "Nickname of battlestar Pegasus, given by the crew of Galactica."),
    VocabularyWord(word: "Big G", definitions: "Nickname given by the crew to the Galactica.")
    ]

    // MARK: - Table view data source

        // required
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        // Configure the cell...
        
        let words = vocabWords[indexPath.row]
        cell.textLabel?.text = words.word
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let defVC =  segue.destination as? DefinitionViewController,
                let indexPath = self.tableView.indexPathForSelectedRow {
                defVC.vocabWord = vocabWords[indexPath.row]
            }
            
        }
    }
    

}
