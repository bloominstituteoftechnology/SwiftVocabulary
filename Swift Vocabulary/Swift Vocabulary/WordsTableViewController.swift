//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Donella Barcelo on 11/4/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Boilerplate", definition: "Is a beginning template for a structure of a file."),
    VocabularyWord(word: "Auto Layout", definition: "It is a constraint-based layout system that allows developers to create an adaptive interface, that responds appropriately to changes in screen size and device orientation."),
    VocabularyWord(word: "Functions", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed."),
    VocabularyWord(word: "Enumerations", definition: "An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.")]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
            if let indexPath = tableView.indexPathForSelectedRow,
                let wordsDetailVC = segue.destination as? DefinitionViewController {
                
                let definition = vocabWords[indexPath.row]
                wordsDetailVC.vocabWord = definition
    
            }
        }
    }
}
