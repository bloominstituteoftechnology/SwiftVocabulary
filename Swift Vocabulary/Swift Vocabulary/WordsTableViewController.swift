//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Bryan Cress on 5/12/20.
//  Copyright © 2020 Bryan Cress. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Segue", definition: "A transition from one story board scene to another"),
                                        VocabularyWord(word: "Interface Builder", definition: "The visual editor main.storyboard uses"),
                                        VocabularyWord(word: "root view controller", definition: "the first view controller in the stack")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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

        // Configure the cell...
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word
        
        return cell
    }
   

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowDefinitionSegue" {
            
            let definitionSegueVC = segue.destination as? DefinitionViewController
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let vocabularyWord = vocabWords[indexPath.row]
                
                definitionSegueVC?.vocabWord = vocabularyWord
            }
        }
    }
}
