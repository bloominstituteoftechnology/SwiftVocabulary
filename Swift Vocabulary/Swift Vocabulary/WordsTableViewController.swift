//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by dc on 2/17/20.
//  Copyright © 2020 Diego Covarrubias. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords = [
        VocabularyWord(
            word: "Variable",
            definition: "A named value whose stored information can change."
        ),
        VocabularyWord(
            word: "Constant",
            definition: "A named value whose stored information cannot change."
        )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        cell.textLabel?.text = vocabWords[indexPath.row].word
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let vc = segue.destination as? DefinitionViewController else {
                return
            }
                        
            guard let row = tableView.indexPathForSelectedRow?.row else {
                return
            }
            
            vc.vocabWord = vocabWords[row]
        }
    }
    
    // MARK: - Actions
    @IBAction func addWord(_ sender: Any) {
        let alertController = UIAlertController(
            title: "Add Word",
            message: "Please enter the word and its definition",
            preferredStyle: .alert
        )
        
        var wordTextField: UITextField?
        alertController.addTextField { textField in
            textField.placeholder = "Word"
            wordTextField = textField
        }
        
        var definitionTextField: UITextField?
        alertController.addTextField { textField in
            textField.placeholder = "Definition"
            definitionTextField = textField
        }
        
        alertController.addAction(UIAlertAction(title: "Confirm", style: .default) { _ in
            guard let word = wordTextField?.text else { return }
            guard let definition = definitionTextField?.text else { return }
            self.vocabWords.append(VocabularyWord(word: word, definition: definition))
            self.tableView.reloadData()
        })
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        self.present(alertController, animated: true)
    }
}
