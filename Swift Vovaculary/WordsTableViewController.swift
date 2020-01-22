//
//  WordsTableViewController.swift
//  Swift Vovaculary
//
//  Created by Lambda_School_Losaner_256 on 1/17/20.
//  Copyright © 2020 Benglobal Creative. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."), VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants refer to fixed values that a program may not alter during its execution."), VocabularyWord(word: "Function", definition: "A named section of a code that, when called, performs a specific, defined task, and returns a value.")]
    
        override func viewDidLoad() {
            super.viewDidLoad()

            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(newVocabWord))
            
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
            return vocabWords.count
        }

        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

            // Configure the cell...
            let swiftVocabWord = vocabWords[indexPath.row]
            cell.textLabel?.text = swiftVocabWord.word

            return cell
        }

        // MARK: - Navigation
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ShowDefinitionSegue" {
                if let indexPath = tableView.indexPathForSelectedRow, let definitionDetailVC = segue.destination as? DefinitionViewController {
                    let word = vocabWords[indexPath.row]
                    definitionDetailVC.vocabWord = word
                }
            }
        }
    
    
    @objc func newVocabWord() {
        let alert = UIAlertController(title: "Enter New Word", message: nil, preferredStyle: .alert)
        alert.addTextField()
        alert.addTextField()
        alert.textFields![0].placeholder = "Enter Word"
        alert.textFields![0].keyboardType = UIKeyboardType.alphabet
        alert.textFields![1].placeholder = "Enter Definition"
        alert.textFields![1].keyboardType = UIKeyboardType.alphabet
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [weak self, weak alert] action in
            guard let word = alert?.textFields?[0].text, let definition = alert?.textFields?[1].text else { return }
            self?.submit(word, definition)
        }
        alert.addAction(submitAction)
        present(alert, animated: true)
    }
    
    func submit(_ word: String, _ definition: String) {
        vocabWords.append(VocabularyWord(word: word, definition: definition))
        print(vocabWords)
    }
}
