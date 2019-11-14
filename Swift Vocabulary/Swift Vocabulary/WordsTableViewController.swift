//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Jeremy Taylor on 11/13/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    var vocabWords:[VocabularyWord] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        loadVocabularyWords()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let entry = vocabWords[indexPath.row]
        
        cell.textLabel?.text = entry.word

        return cell
    }
        
        func loadVocabularyWords() {
            let variable = VocabularyWord(word: "Variable", definition: "A variable is a data store that can have its value changed whenever you want.")
            let constant = VocabularyWord(word: "Constant", definition: "A constant is a data store that you set once and can never change.")
            let function = VocabularyWord(word: "Functions", definition: "Functions let you define re-usable pieces of code that perform specific pieces of functionality. Usually functions are able to receive some values to modify the way they work, but it's not required.")
            vocabWords.append(contentsOf: [variable, constant, function])
        }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let destinationVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let entry = vocabWords[indexPath.row]
            destinationVC.vocabWord = entry
        }
        
    }
    

}
