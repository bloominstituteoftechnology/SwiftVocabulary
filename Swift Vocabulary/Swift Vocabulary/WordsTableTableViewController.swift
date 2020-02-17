//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Mark Gerrior on 2/17/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord]
    
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

        // Configure the cell...
        cell.textLabel?.text = vocabWords[indexPath.row].word
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard segue.identifier == "ShowDefinitionSegue",
            let destination = segue.destination as? DefinitionViewController,
            let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let vocab = vocabWords[indexPath.row]
        
        destination.vocabWord = vocab
    }
}
