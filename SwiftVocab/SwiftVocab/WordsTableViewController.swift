//
//  WordsTableViewController.swift
//  SwiftVocab
//
//  Created by Jorge Alvarez on 12/9/19.
//  Copyright © 2019 Jorge Alvarez. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "Opposite of constant"),
                                        VocabularyWord(word: "Constant", definition: "Opposite of variable"),
                                        VocabularyWord(word: "Function", definition: "List of instructions")
                                        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word

        return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            // where it's going
            
            // which cell was selected
            if let selectedIndexPath = tableView.indexPathForSelectedRow,
                let defVC = segue.destination as? DefinitionViewController {
                
                let word = vocabWords[selectedIndexPath.row]
                
                defVC.vocabWord = word
            }
            
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
