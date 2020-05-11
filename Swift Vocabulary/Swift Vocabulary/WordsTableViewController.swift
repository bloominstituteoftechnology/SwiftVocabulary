//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Ian Becker on 5/11/20.
//  Copyright © 2020 Ian Becker. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Boolean", definition: "A data type that stores either true or false."), VocabularyWord(word: "Class", definition: "A custom data type that can have one or more properties and one or more methods. Reference type."), VocabularyWord(word: "Double", definition: "A high-performance, unordered collection of values stored using a key for fast access."), VocabularyWord(word: "Method", definition: "A function that belongs to a struct or class."), VocabularyWord(word: "String", definition: "A collection of letters.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Check the segue identifier
        
        if segue.identifier == "ShowDefinitionSegue" {
        
        // Get new viewController (WHERE)
        
        let definitionVC = segue.destination as?
        DefinitionViewController
        
        // WHAT to the WHERE
        
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let definition = vocabWords[indexPath.row]
            
        
        // Pass the object
               
                definitionVC?.definition = definition
                
            }
        }
    }
}


