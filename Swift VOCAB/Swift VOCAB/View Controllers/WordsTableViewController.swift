//
//  WordsTableViewController.swift
//  Swift VOCAB
//
//  Created by Alex Shillingford on 7/15/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabController = VocabularyController()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Words"
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
        cell.textLabel?.text = vocabController.vocabWords[indexPath.row].word

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let detailVC = segue.destination as? DefinitionViewController else { return }
            
            detailVC.vocabWord = self.vocabController.vocabWords[indexPath.row]
        }
    }
    @IBAction func addVocabWordButtonTapped(_ sender: UIBarButtonItem) {
        
    }
    

}
