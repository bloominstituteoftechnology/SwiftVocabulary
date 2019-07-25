//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Lisa Fisher on 7/23/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabwords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created"),
        VocabularyWord(word: "Constant", definition: "Fixed values that a program may not alter during its execution. Constants can be any of the basic data types."),
        VocabularyWord(word: "Function", definition: "Self-contained chuncks of code that perform a specific task.")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabwords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let word = vocabwords[indexPath.row]
        
        cell.textLabel?.text = word.word
        
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let definitionVC = segue.destination as? DefinitionViewController else {return}
            
            let vocabWord = vocabwords[indexPath.row]
            
            definitionVC.vocabWord = vocabWord
            
        }
    }

}
