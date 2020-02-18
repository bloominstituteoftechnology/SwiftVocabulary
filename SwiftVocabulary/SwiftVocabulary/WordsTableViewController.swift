//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Harmony Radley on 2/17/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(variable: "Variable", definiton: "A named value used to store information. Variables can be changed after being created."),
                                        VocabularyWord(variable: "Constant", definiton: "Refers to fixed values that a program may not alter during its execution."),
                                        VocabularyWord(variable: "Function", definiton: "Is a set of statements organized together to perform a specific task.")]
    
    
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocab = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocab.variable
       // cell.description.text = vocab.definiton
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocab = vocabWords[indexPath.row]
            
            let definitionVC = segue.destination as? DefinitonViewController
            
            definitionVC?.vocabWord = vocab
            
        }
    }
    

}
