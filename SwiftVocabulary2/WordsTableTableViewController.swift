//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Robert on 1/28/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
    VocabularyWord(word: "Constant", definition: "A fixed value that a program my not alter during its excution. Constants can be of any basic data types."),
    VocabularyWord(word: "Integer", definition: "A whole number with no fractional component, such as 23 and -80"),
    VocabularyWord(word: "Double", definition: "Unlike integers, doubles can have fractional components, such as 3.14 and -83.19"),
    VocabularyWord(word: "String", definition: "Is a series of characters that forms a collection. ")
    
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
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let definitionVC = segue.destination as? DefinitionViewController {
                let definition = vocabWords[indexPath.row]
                definitionVC.vocabWord = definition
            }
        }
    }
    

}
