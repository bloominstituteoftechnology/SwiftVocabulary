//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Elizabeth Thomas on 1/29/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "A value that can change after it’s been initialized, indicated in Swift by the var keyword."),
        VocabularyWord(word: "Constant", definition: "A value that’s initialized once and cannot change, indicated in Swift by the let keyword."),
        VocabularyWord(word: "Function", definition: "A reusable, named piece of code that can be referred to from many places in a program.")
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionViewController = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                let word = vocabWords[indexPath.row]
                
                definitionViewController.vocabWord = word
            }
        }
    }
    
}
