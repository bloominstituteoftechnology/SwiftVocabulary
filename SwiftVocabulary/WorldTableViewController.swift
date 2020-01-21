//
//  WorldTableViewController.swift
//  SwiftVocabulary
//
//  Created by beth on 1/20/20.
//  Copyright © 2020 elizabeth wingate. All rights reserved.
//

import UIKit

class WorldTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "not consistent or having a fixed pattern; liable to change."),
                                      VocabularyWord(word: "Constant", definition: "a situation or state of affairs that does not change."),
                                      VocabularyWord(word: "Function", definition: "work or operate in a proper or particular way.")]
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    // Lets us customize the cell. Set the text of its labels, give it different colors, and so on.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        print(indexPath.row)
        
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    // Check segue's identifier
    //Get the view controller you are going to (cast the segue.destination)
    //Get the information you want to pass to the view controller
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Where are we going?
        if segue.identifier == "ShowDefinition" {
            //We know we are going to the word definition view controller.
            
            // What are we giving to the new view controller?
            
            if let indexPath = tableView.indexPathForSelectedRow,
                let definitionVC = segue.destination as? DefinitionViewController {
                
                let word = vocabWords[indexPath.row]
                definitionVC.vocabWord = word
                
            }
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}

