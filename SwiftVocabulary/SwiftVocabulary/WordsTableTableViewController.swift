//
//  WordsTableTableViewController.swift
//  SwiftVocabulary
//
//  Created by Alex Rhodes on 7/15/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabController: VocabularyController = VocabularyController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Vocabulary Words"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabController.vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocabWords = vocabController.vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWords.word

        return cell
    }
 

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let defintionDetailVC = segue.destination as? DefinitionViewController else { return }
            
            let vocabWord = vocabController.vocabWords[indexPath.row]
            
            defintionDetailVC.vocabWord = vocabWord
            
        }
    }

}
