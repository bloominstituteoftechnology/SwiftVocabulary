//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_loaner_226 on 7/2/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    let wordCell = "WordCell"
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named variable used to store information. Variables can be changed after being created."),                     VocabularyWord(word: "Constant", definition: "A named constant used to store information. Constants can NOT be changed after being created."),                      VocabularyWord(word: "Function", definition: "A function is a block of organized, reusable code that is used to perform a single, related action")]

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
        let cell = tableView.dequeueReusableCell(withIdentifier: wordCell, for: indexPath)
        cell.textLabel?.text = vocabWords[indexPath.row].word
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
        let definitionVC = segue.destination as? DefinitionViewController else {return}
        
        definitionVC.vocabWords = vocabWords[indexPath.row]
        
        // Pass the selected object to the new view controller.
    }
}
