//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by John Kouris on 7/21/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var vocabWords = [VocabularyWord]()
    
    // MARK: - View methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Swift Vocabulary"
        navigationController?.navigationBar.prefersLargeTitles = true
        createWords()
    }

    // MARK: - Table view data source

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
            guard let indexPath = tableView.indexPathForSelectedRow,
                let destinationVC = segue.destination as? DefinitionViewController else { return }
            destinationVC.vocabWord = vocabWords[indexPath.row]
        }
    }
    
    // MARK: - IBActions
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Add Word", message: "Add a new vocabulary word and its defintion", preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Word"
        }

        alertController.addTextField { (textField) in
            textField.placeholder = "Definition"
        }
        
        let addAction = UIAlertAction(title: "Add", style: .default) { (action) in
            guard let wordTextField = alertController.textFields?[0],
                let definitionTextField = alertController.textFields?[1] else { return }
            self.vocabWords.append(VocabularyWord(word: wordTextField.text ?? "", definition: definitionTextField.text ?? ""))
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(addAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    // MARK: - Private methods
    
    func createWords() {
        vocabWords.append(VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."))
        vocabWords.append(VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants can not be changed after being created."))
        vocabWords.append(VocabularyWord(word: "Function", definition: "A set of statements organized together to perform a specific task."))
    }
}
