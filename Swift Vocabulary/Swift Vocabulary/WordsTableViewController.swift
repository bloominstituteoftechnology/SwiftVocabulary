//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Dennis Rudolph on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value that can store info and can be changed"),      VocabularyWord(word: "Constant", definition: "A named value that can store info but cannot be changed"), VocabularyWord(word: "Function", definition: "A chunk of code that performs a specific task")]

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
        cell.textLabel?.text = vocabWords[indexPath.row].word
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let selectedRow = tableView.indexPathForSelectedRow?.row,
                let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            definitionVC.vocabWord = vocabWords[selectedRow]
        }
    }
    

}
