//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Brian Vilchez on 4/29/19.
//  Copyright © 2019 Brian Vilchez. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
var vocabController = VocabularyController()
    
    var vocabWord = VocabularyController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    vocabController.createVocab()
    }

    // MARK: - Table view data source

      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWord.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        
        let vocab = vocabController.vocabWord[indexPath.row]
        
        cell.textLabel?.text = "\(vocab.word)"
      
        return cell
    }
 

 
   

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
          guard let definitionVC = segue.destination as? DefinitionViewController,
            let indexPath = tableView.indexPathForSelectedRow else { return }
            
           definitionVC.vocabWord = vocabController.vocabWord[indexPath.row]
        }
    }


}
