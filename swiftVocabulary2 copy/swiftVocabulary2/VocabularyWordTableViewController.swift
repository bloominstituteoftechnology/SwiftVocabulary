//
//  VocabularyWordTableViewController.swift
//  swiftVocabulary2
//
//  Created by brian vilchez on 7/15/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class VocabularyWordTableViewController: UITableViewController {
    var vocabController = VocabularyController()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "VocabularyCell", for: indexPath)
        let vocabularyWord = vocabController.vocabWords[indexPath.row]
        cell.textLabel?.text = vocabularyWord.word
        return cell
    }




    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionDetail" {
            guard let indexpath = tableView.indexPathForSelectedRow,
                let DefinitionDetailVC = segue.destination as? DefinitionViewController else { return }
            
            let vocabWord = vocabController.vocabWords[indexpath.row]
            DefinitionDetailVC.vocabWord = vocabWord
        }
    }


}
