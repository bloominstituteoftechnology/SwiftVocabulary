//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Casualty on 7/24/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created.", example: "var number = 5"), VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants can not be changed after being created.", example: "let number = 5")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addWordButtonTapped(_ sender: UIButton) {
        
        //Create UIAlertController Object
        let newWordAlert = UIAlertController(title: "Add New Word", message: "Please type the word, definition, and use an example.", preferredStyle: .alert)
        
        //Create UIAlertController textFields and add placeholder text
        newWordAlert.addTextField()
        newWordAlert.addTextField()
        newWordAlert.addTextField()
        newWordAlert.textFields![0].placeholder = "word"
        newWordAlert.textFields![1].placeholder = "definition"
        newWordAlert.textFields![2].placeholder = "give example here"
        
        newWordAlert.addAction(UIAlertAction(title: "Add", style: .default, handler: { action in
            guard let newWord = newWordAlert.textFields?[0].text,
                let newDefinition = newWordAlert.textFields?[1].text, let newExample = newWordAlert.textFields?[2].text else { return }
            
            if newWord.isEmpty == true {
                
                let missingWordAlert = UIAlertController(title: "Error", message: "You forgot to enter a word", preferredStyle: .alert)
                
                missingWordAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
                
                self.present(missingWordAlert, animated: true)
                
            } else if newDefinition.isEmpty == true {
                
                let missingDefinitionAlert = UIAlertController(title: "Error", message: "You forgot to enter a definition", preferredStyle: .alert)
                
                missingDefinitionAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
                
                self.present(missingDefinitionAlert, animated: true)
                
            } else if newExample.isEmpty == true {
                
                let missingExampleAlert = UIAlertController(title: "Error", message: "You forgot to enter an example", preferredStyle: .alert)
                
                missingExampleAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
                
                self.present(missingExampleAlert, animated: true)
                
            } else {
                
                self.addWord(newWord: newWord, newDefinition: newDefinition, newExample: newExample)
            }
        }))
        
        present(newWordAlert, animated: true)
        
    }
    
    func addWord(newWord: String, newDefinition: String, newExample: String) {
        
        let newVocabWord = VocabularyWord(word: newWord, definition: newDefinition, example: newExample)
        vocabWords.append(newVocabWord)
        
        self.tableView.reloadData()
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

        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            let cellWord = vocabWords[indexPath.row]
            
            definitionVC.cellWord = cellWord
            
        }
    }

    
}
