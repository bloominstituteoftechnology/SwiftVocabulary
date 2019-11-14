//
//  WordsTableTableViewController.swift
//  SwiftVocabulary
//
//  Created by Joshua Rutkowski on 11/13/19.
//  Copyright © 2019 Joshua Rutkowski. All rights reserved.
//

import UIKit


class WordsTableViewController: UITableViewController {
    var words: [VocabularyWord] = [VocabularyWord(word: "Constant", definition: "Constants associate a name with a value of a particular type. The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future."),
                                   VocabularyWord(word: "Array", definition: "An array stores values of the same type in an ordered list."),
                                   VocabularyWord(word: "Functions", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return words.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabWord = words[indexPath.row]
        cell.textLabel?.text = vocabWord.word
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let vocabWordVC = segue.destination as? DefinitionViewController {
                
                let word = words[indexPath.row]
                vocabWordVC.vocabWord = word
                
            }

        }
    }
}
