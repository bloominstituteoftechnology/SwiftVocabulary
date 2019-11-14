//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Robert B on 11/13/19.
//  Copyright © 2019 lambda school. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    var vocabWords = [
        VocabularyWord(word: "Variable", definition: "Named storage that our applications can manipulate"),
        VocabularyWord(word: "Constant", definition: "Fixed values that a application may not alter during its execution"),
        VocabularyWord(word: "Function", definition: "Set of statements organized together to perform a specific task"),
        VocabularyWord(word: "Method", definition: "Functions associated with an instance of a particular type")
    ]
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Swift Vocabluary"
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Actions
    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        let ac = UIAlertController(title: "Add Word", message: nil, preferredStyle: .alert)
        ac.addTextField { textField in
            textField.placeholder = "Word"
        }
        ac.addTextField { textField in
            textField.placeholder = "Definition"
        }
        ac.addAction(UIAlertAction(title: "Submit", style: .default) { [weak self] _ in
            guard let self = self else { return }
            guard let word = ac.textFields?.first?.text else { return }
            guard let definition = ac.textFields?.last?.text else { return }
            self.vocabWords.append(VocabularyWord(word: word, definition: definition))
            self.tableView.reloadData()
            self.dismiss(animated: true)
        })
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(ac, animated: true)
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case Segues.showDefinition:
            guard let definitionViewController = segue.destination as? DefinitionViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            definitionViewController.vocabWord = vocabWords[indexPath.row]
        default:
            break
        }
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Table View Data Source Methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.wordCell, for: indexPath)
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word
        return cell
    }
}
