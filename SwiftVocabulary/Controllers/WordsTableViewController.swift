//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Steven Leyva on 5/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabController = VocabularyController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return vocabController.vocabWords.count
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabWord = vocabController.vocabWords[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text = vocabWord.word

        return cell
    }




    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let vocabDetailVC = segue.destination as? DefinitionViewController,
        let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let vocab = vocabController.vocabWords[indexPath.row]
        
        vocabDetailVC.vocabWord = vocab
    }

}
