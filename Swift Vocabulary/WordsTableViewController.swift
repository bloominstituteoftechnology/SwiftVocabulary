//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Andrew Ruiz on 7/15/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import UIKit


class WordsTableViewController: UITableViewController {
    
    var vocabController = VocabularyController()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        
        // Configure the cell...
        let vocabWord = vocabController.vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let vocabDetailVC = segue.destination as? DefinitionViewController else {return}
            
            let cellVocab = vocabController.vocabWords[indexPath.row]
            vocabDetailVC.vocabWord = cellVocab
        }
        
    }

}
