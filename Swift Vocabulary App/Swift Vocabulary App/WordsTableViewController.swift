//
//  WordsTableViewController.swift
//  Swift Vocabulary App
//
//  Created by Mark Poggi on 3/16/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Title1", definition: "TheDefinition1"),
        VocabularyWord(word: "Title2", definition: "The definition2"),
        VocabularyWord(word: "Title3", definition: "The definition3")
]
    
    
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        
        let definition = vocabWords[indexPath.row]
        
        cell.textLabel?.text = definition.word

        return cell
    }
 

  


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            if let detailVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                
                let definition = vocabWords[indexPath.row]

            }
        }
    
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

}
