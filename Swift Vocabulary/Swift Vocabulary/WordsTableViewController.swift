//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by morse on 10/7/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    struct PropertyKeys {
        static let wordCell = "WordCell"
        static let showDefinitionSegue = "ShowDefinitionSegue"
    }
    
    var vocabWords: [VocabularyWord] = [] {
        didSet {
            vocabWords = vocabWords.sorted(by: { ($0.word < $1.word)
            })
            VocabularyWord.saveToFile(vocabularyWords: vocabWords)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        vocabWords = VocabularyWord.loadFromFile()
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Add a Word?", message: "Type the word and definition.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (_) in
            self.add(word: alert.textFields?[0].text ?? "", definition: alert.textFields?[1].text ?? "")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addTextField(configurationHandler: { textfield in textfield.placeholder = "Word" })
        alert.addTextField(configurationHandler: { textfield in textfield.placeholder = "Definition" })
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func add(word: String, definition: String) {
        if !word.isEmpty && !definition.isEmpty {
            vocabWords.append(VocabularyWord(word: word, definition: definition))
            tableView.reloadData()
        }
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.wordCell, for: indexPath)
        
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            vocabWords.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == PropertyKeys.showDefinitionSegue {
            let definitionVC = segue.destination as? DefinitionViewController
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let vocabWord = vocabWords[indexPath.row]
            definitionVC?.vocabWord = vocabWord
        }
    }
}
