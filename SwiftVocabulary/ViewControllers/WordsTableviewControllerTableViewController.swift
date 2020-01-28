//
//  WordsTableviewControllerTableViewController.swift
//  SwiftVocabulary
//
//  Created by Karim Boudlal and Chris Price on 9/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableviewControllerTableViewController: UITableViewController {
    let vocabController: VocabularyController = VocabularyController ()

    override func viewDidLoad() {
        super.viewDidLoad()
        vocabController.createVocabWord()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabController.vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = vocabController.vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            guard let detailVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            detailVC.vocabWord = vocabController.vocabWords[indexPath.row]
        }
    }
}

