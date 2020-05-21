//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by James Sedlacek on 5/19/20.
//  Copyright © 2020 James Sedlacek. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var words: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A variable is a storage                                address paired with an associated symbolic name, which contains                                  some quantity of information referred to as a value."),
                                   VocabularyWord(word: "Constant", definition: "A constant is a value that cannot be altered by the program during normal execution."),
                                   VocabularyWord(word: "Function", definition: "A function is a type of procedure or routine.")]
  
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return words.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = words[indexPath.row].word

        return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let defintionVC = segue.destination as? DefinitionViewController else {return}
            
            defintionVC.vocabWord = words[indexPath.row]
        }
        
    }
    

}
