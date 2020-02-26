//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Bree Jeune on 9/18/19.
//  Copyright © 2019 Young. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Array", definition: "A sequential collection of values of any type, such as an array of names in a band."),
        VocabularyWord(word: "Boolean", definition: "A data type that stores either true or false."),
        VocabularyWord(word: "Class", definition: "A custom data type that can have one or more properties and one or more methods. Unlike structs, classes are reference types."),
        VocabularyWord(word: "Data", definition: "A type that holds any kind of binary data."),
        VocabularyWord(word: "Enum", definition: "A set of named values that are easier to remember and safer than just using strings or integers. For example, you might create an enum of directions, using north, south, east, and west – this is much nicer than using 0, 1, 2, and 3, for example. Short for enumeration.")
        
    ]

 
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return vocabWords.count
    }
    

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowDefinitionSegue", for: indexPath)
        
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
                if let definitionVC = segue.destination as? DefinitionViewController,
                    let indexPath = tableView.indexPathForSelectedRow {
                    let vocabWord = vocabWords[indexPath.row]
                    definitionVC.vocabWord = vocabWord
                }
            }
        
        }
}
