//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Hayden Hastings on 4/29/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vocabController.createVocabWords()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabulary = vocabController.vocabWords[indexPath.row]
        cell.textLabel?.text = "\(vocabulary.word)"
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
           guard let definitionVC = segue.destination as? DefinitionViewController,
            let indexPath = tableView.indexPathForSelectedRow else { return }
            
            definitionVC.vocabWord = vocabController.vocabWords[indexPath.row]
        }
    }
    
//    let vocabWords = VocabularyController()
    let vocabController = VocabularyController()
    
}
