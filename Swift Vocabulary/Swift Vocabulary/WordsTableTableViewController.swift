//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_220 on 11/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController
{
    
    var vocabWords: [VocabularyWord] = [
    VocabularyWord(word: "Variable", definition: "A variable is a data type that holds a value, this data type is immutable"),
    VocabularyWord(word: "Constant", definition: "A constant is also a data type that can hold a value, however this data type is muatble"),
    VocabularyWord(word: "Function", definition: "A function is a block of code that is an outline in which a designated algorithm should be performed when called upon.")
    ]

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
        return 0
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
        
        if segue.identifier == "ShowDefinitionSegue"
        {
            let seguePath = segue.destination as? DefinitionViewController
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let vocab = vocabWords[indexPath.row]
                seguePath?.vocabWord = vocab
            }
            
        }
    }

}
