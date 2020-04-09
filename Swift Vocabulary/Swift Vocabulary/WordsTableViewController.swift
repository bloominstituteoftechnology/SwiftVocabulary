//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Stuart on 4/8/20.
//  Copyright © 2020 Stuart. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
    VocabularyWord(word: "Example", definition: "Example Definition")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        return cell
    }

    // MARK: - Navigation
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let detailVC = segue.destination as?
            DefinitionViewController,
                let indexPath = self.tableView.indexPathForSelectedRow {
                detailVC.vocabWord = vocabWords[indexPath.row]
            }
        }
    }

}
