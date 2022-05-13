//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Waseem Idelbi on 5/12/22.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    //MARK: - Properties
    var vocabWords: [VocabularyWord] = []
    
    //MARK: - Presentable UIAlertControllers
    var addWordAlert: UIAlertController {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        alert.title = "Add a new Vocabulary Word"
        alert.message = "Enter the required details below to add your new word to the list."
        alert.addTextField { textField in
            textField.placeholder = "Word title"
        }
        alert.addTextField { textField in
            textField.placeholder = "Word Definition"
        }
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
        let addButton = UIAlertAction(title: "Add", style: .default) { _ in
            guard !alert.textFields![0].text!.isEmpty, !alert.textFields![1].text!.isEmpty else {
                print("Input error for creating a new word")
                return
            }
            let wordTitle = alert.textFields![0].text!
            let wordDefinition = alert.textFields![1].text!
            let newWord = VocabularyWord(word: wordTitle, definition: wordDefinition)
            self.vocabWords.append(newWord)
            self.tableView.reloadData()
        }
        alert.addAction(cancelButton)
        alert.addAction(addButton)
        return alert
    }
    
    //MARK: - TableView Configuration Methods
    
    // Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = true
    }

    // Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let currentWord = vocabWords[indexPath.row]
        cell.textLabel?.text = currentWord.word
        return cell
    }
    
    // Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            let selectedWord = vocabWords[tableView.indexPathForSelectedRow!.row]
            let definitionVC = segue.destination as! DefinitionViewController
            definitionVC.vocabWord = selectedWord
        }
    }
    
    //MARK: - IBActions
    @IBAction func AddWordButtonTapped(_ sender: Any) {
        present(addWordAlert, animated: true)
    }
    

}
