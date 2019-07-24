//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Jessie Ann Griffin on 7/23/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    let vocabController = VocabularyController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Swift Vocabulary"
    }

    @IBAction func addWordButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add a new vocabulary word",
                                      message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Word"
        })
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Definition"
        })
        
        alert.addAction(UIAlertAction(title: "ADD", style: .default, handler: { action in
            
            if let word = alert.textFields?.first?.text, let definition = alert.textFields?.last?.text {
                print("Word: \(word)")
                print("Definition: \(definition)")
                let newWord = VocabularyWord(word: word, definition: definition)
                self.vocabController.vocabWords.append(newWord)
                
            }
        }))
        
        self.present(alert, animated: true)
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

        // Configure the cell...
        let word = vocabController.vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            guard let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let definition = vocabController.vocabWords[indexPath.row]
            definitionVC.vocabWord = definition
        }
    }
//
//    func updateList() {
//        tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
//    }
}
