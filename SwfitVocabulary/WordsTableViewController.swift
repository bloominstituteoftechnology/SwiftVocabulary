//
//  WordsTableViewController.swift
//  SwfitVocabulary
//
//  Created by Donella Barcelo on 7/15/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    let  vocabController = VocabularyController()
    
    
    
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
        return vocabController.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let myWord = vocabController.vocabWords[indexPath.row]
        cell.textLabel?.text = myWord.word
        
        return cell
    }
    

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let vocabWordsDetailVC = segue.destination as? DefinitionViewController else { return }
            vocabWordsDetailVC.vocabWord = vocabController.vocabWords[indexPath.row]
        }
}
}
