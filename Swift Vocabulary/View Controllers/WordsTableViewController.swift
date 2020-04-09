//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Bronson Mullens on 4/8/20.
//  Copyright © 2020 Bronson Mullens. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Integer", definition: "A whole number."),
        VocabularyWord(word: "String", definition: "A collection of characters."),
        VocabularyWord(word: "Boolean", definition: "A value which is either true or false."),
        VocabularyWord(word: "Double", definition: "A number with a decimal value.")
    ]
    
    func addVocabWord(newWord: String, newDefinition: String) {
        let newWord = VocabularyWord(word: newWord, definition: newDefinition)
        vocabWords.append(newWord)
    }
    
    // MARK: - Table view data source
    
    @IBOutlet weak var addVocab: UIBarButtonItem!
    
    @IBAction func addVocabButtonPressed(_sender: Any) {
        let alertController = UIAlertController(title: "Add Vocabulary", message: "Enter a word and definition", preferredStyle: .alert)
        
        alertController.addTextField {
            (textField) in textField.placeholder = "Enter word"
        }
        
        alertController.addTextField {
            (textField) in textField.placeholder = "Enter definition"
        }
        
        let confirmAddVocab = UIAlertAction(title: "Add", style: .default, handler: { (action) in
            if let unwrappedWord = alertController.textFields?[0].text, let unwrappedDefinition = alertController.textFields?[1].text {
                self.addVocabWord(newWord: unwrappedWord, newDefinition: unwrappedDefinition)
                self.tableView.reloadData()
            }
        })
        
        let cancelAddVocab = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(confirmAddVocab)
        alertController.addAction(cancelAddVocab)
        
        present(alertController, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let currentWord = vocabWords[indexPath.row]
        cell.textLabel?.text = currentWord.word
        return cell
    }
 
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController, let indexPath = self.tableView.indexPathForSelectedRow {
                definitionVC.vocabWord = vocabWords[indexPath.row]
            }
        }
    }
}
