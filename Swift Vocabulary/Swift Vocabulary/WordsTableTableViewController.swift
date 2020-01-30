//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Jarren Campos on 1/26/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "Best Code Ever"),
        VocabularyWord(word: "Constant", definition: "A Constant")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count

    }
    // function to reuse the cells.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word
        
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1. Make sure you are using the correct segue
        
        if segue.identifier == "ShowDefinitionSegue" {
            // 2. Get the instance of the detail view from the destination
            // 3. Get the index path for the row the user tapped
            if let detailVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow {
                // 4. Initialize Color with index path
                let word = vocabWords[indexPath.row]
                detailVC.vocabWord = word
            }
        }
        
    }
}
