//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Nelson Gonzalez on 9/18/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable (var)", definition: "It can be modified!"), VocabularyWord(word: "Constant (let)", definition: "It can not be modified!"), VocabularyWord(word: "Console", definition: "Can print something with your program.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Removes empty cells from table view
        tableView.tableFooterView = UIView()
        
    }
    
    private func addNewWord() {
        let alert = UIAlertController(title: "Add new word", message: "Please enter a new word and definition to be added to the list.", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Word"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Definition"
        }
        
        let addWordAction = UIAlertAction(title: "Add", style: .default) { (_) in
            
            guard let word = alert.textFields?[0].text, !word.isEmpty, let definition = alert.textFields?[1].text, !definition.isEmpty else { return }
            
            let newWord = VocabularyWord(word: word, definition: definition)
            
            self.vocabWords.append(newWord)
            
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(addWordAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        return cell
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToShowDefinitionVC" {
            if let destination = segue.destination as? DefinitionViewController {
                guard let indexPath = tableView.indexPathForSelectedRow else { return }
                destination.vocaWord = vocabWords[indexPath.row]
            }
        }
    }
   
    @IBAction func addVocabularyBarButtonPressed(_ sender: UIBarButtonItem) {
        
        addNewWord()
    }
    
}
