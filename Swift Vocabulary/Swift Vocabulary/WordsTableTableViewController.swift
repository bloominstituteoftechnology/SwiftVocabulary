//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Samuel Esserman on 1/17/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//
// THIS IS THE VIEW BELOW. THIS IS WHAT WE SEE
import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Sun", definition: "Gas Cloud"),
    VocabularyWord(word: "Earth", definition: "Planet"),
    VocabularyWord(word: "House", definition: "Shelter"),
    VocabularyWord(word: "Hospital", definition: "Terrifing")]

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
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            // when using [] on an array ... vocabWords[0]  you are indexing to get that value out
            let word = vocabWords[indexPath.row]
            
            guard let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            definitionVC.vocabWord = word
            
        }
        
        
        
    }
    
    

}
