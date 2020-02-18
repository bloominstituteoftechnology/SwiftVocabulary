//
//  worldsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Ray Wellman on 2/17/20.
//  Copyright © 2020 Richard Ray Wellman. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "Not consistent or having a fixed pattern; liable to change."),
                                        VocabularyWord(word: "Constant", definition: "occurring continuously over a period of time."),
                                        VocabularyWord(word: "Function", definition: "A relationship or expression involving one or more variables.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word
        
        // Configure the cell...
        
        return cell
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
                        
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocabWord = vocabWords[indexPath.row]
            
            guard let definitionTableVC = segue.destination as? DefinitionViewController else { return }
            
            definitionTableVC.vocabWord = vocabWord
        }
    }
}
