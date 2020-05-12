//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Violet Lavender Love on 5/11/20.
//  Copyright © 2020 Love. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Array", definition: "An ordered, random-access collection.")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word
        
        return cell
    }
    
    
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            let definitionVC = segue.destination as? DefinitionViewController
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let word = vocabWords[indexPath.row]
                
                definitionVC?.vocabWord = word
                
            }
        }
    }
}
