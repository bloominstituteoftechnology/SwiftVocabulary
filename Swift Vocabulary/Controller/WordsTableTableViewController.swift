//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Jason Hoover on 5/11/20.
//  Copyright © 2020 Jason Hoover. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable",definition: "Provides us with named storage that our programs can manipulate. Each variable in Swift 4 has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable."),VocabularyWord(word: "Constant",definition: "Refers to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal."),VocabularyWord(word: "Function",definition: "A function is a set of statements organized together to perform a specific task.")]
    
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
        if segue.identifier == "ShowDefinitionSegue" {
            let vocabWordVC = segue.destination as? DefinitionViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                let vocabWord = vocabWords[indexPath.row]
                vocabWordVC?.vocabWord = vocabWord
            }
        }
    }
}
