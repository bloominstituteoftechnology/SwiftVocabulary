//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Chad Rutherford on 11/4/19.
//  Copyright © 2019 Chad Rutherford. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "A named value used to store information; can be set to a different value in the future."),
        VocabularyWord(word: "Constant", definition: "A named value used to store information; can’t be changed once it’s set."),
        VocabularyWord(word: "Function", definition: "Self-contained chunks of code that perform a specific task."),
        VocabularyWord(word: "Closure", definition: "Self-contained blocks of functionality that can be passed around and used in your code."),
        VocabularyWord(word: "Protocol", definition: "A blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality."),
        VocabularyWord(word: "Optional", definition: "Represents two possibilities: Either there is a value, or there is no value at all.")
    ]
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Helper Methods
    @objc func addButtonTapped() {
        
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case Segues.showDefinitionSegue:
            guard let definitionVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            let word = vocabWords[indexPath.row]
            definitionVC.word = word
        default:
            break
        }
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Table View Data Source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.wordCell, for: indexPath)
        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
        return cell
    }
}
