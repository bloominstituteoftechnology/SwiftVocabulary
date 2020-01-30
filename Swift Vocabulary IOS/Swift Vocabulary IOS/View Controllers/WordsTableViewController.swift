//
//  WordsTableViewController.swift
//  Swift Vocabulary IOS
//
//  Created by Cory Lyons on 1/29/20.
//  Copyright © 2020 Lambda, inc. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
     
        VocabularyWord(Word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."),
        
        VocabularyWord(Word: "Constant", definition: "Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal. There are enumeration constants as well."),
        
        
        VocabularyWord(Word: "Function", definition: "A function is a set of statements organized together to perform a specific task.")
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
       
    }

    
   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.Word
        
     
       
        
        
        
        return cell
    }
    

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "ShowDefinitionSegue" {
            
            if let definitionViewController = segue.destination as? DefinitionViewController,
                
                let indexPath = tableView.indexPathForSelectedRow {
                
                let vocabularyWord = vocabWords[indexPath.row]
                
                definitionViewController.vocabWord = vocabularyWord
                
            }
            
            
            
        }
        
        
    }
    

}
