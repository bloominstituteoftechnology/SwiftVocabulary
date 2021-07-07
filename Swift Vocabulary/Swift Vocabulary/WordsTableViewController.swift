//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Dillon P on 7/23/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    // MARK: - Properties
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. A variable is a mutable element, meaning that the value of the variable can be changed after being created."),
                                        VocabularyWord(word: "Constant", definition: "A 'let' constant is a named value used to store information. A 'let' constant is an immutable element, meaning that once the constant is created, it cannot be changed."),
                                        VocabularyWord(word: "Function", definition: "A function is a set of statements organized together to perform a specific task. A function can be called with or without arguments, allowing us to pass local and global parameter values into the function.")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let wordLabel = vocabWords[indexPath.row]
        cell.textLabel?.text = wordLabel.word

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            let word = vocabWords[indexPath.row]
            definitionVC.vocabWord = word
            
        }
        
    }
}
