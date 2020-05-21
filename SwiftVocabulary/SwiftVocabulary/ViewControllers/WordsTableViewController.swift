//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Cora on 5/18/20.
//  Copyright © 2020 Cora. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Constant", definition: "fixed value that cannot be altered during a program's execution"), VocabularyWord(word: "Variable", definition: "named storage of a value that may be changed during a program's execution"), VocabularyWord(word: "Function", definition: "named chunk of code that performs a specific task")]
    
    @IBAction func addWord(_ sender: Any) {
        var txtWord: UITextField?
        var txtDefinition: UITextField?
        let addScreen = UIAlertController(title: "Would you like to add a word?", message: "Please type your new word and definition.", preferredStyle: .alert)
        addScreen.addTextField { (wordTextField) in
            txtWord = wordTextField
            txtWord?.placeholder = "Word"
        }
        addScreen.addTextField { (definitionTextField) in
            txtDefinition = definitionTextField
            txtDefinition?.placeholder = "Definition"
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {action in
            return
        }
        let submitAction = UIAlertAction(title: "Submit", style: .default) {action in
            if let newWord = txtWord?.text,
                let newDefinition = txtDefinition?.text {
                self.vocabWords.append(VocabularyWord(word: newWord, definition: newDefinition))
                self.tableView.reloadData()
            } else {
                return
            }
        }
        addScreen.addAction(submitAction)
        addScreen.addAction(cancelAction)
        present(addScreen, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
            if let indexPath = tableView.indexPathForSelectedRow {
                let definitionVC = segue.destination as? DefinitionViewController
                definitionVC?.vocabWord = vocabWords[indexPath.row]
            }
        }
    }
}
