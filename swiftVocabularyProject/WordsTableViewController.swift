//
//  WordsTableViewController.swift
//  swiftVocabularyProject
//
//  Created by B$hady on 5/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "A name value used to store information. Variables can be changed after being created."),
        VocabularyWord(word: "Constant", definition: "Constant definition"),
        VocabularyWord(word: "Function", definition: "Function defintion")]


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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Wordcell", for: indexPath)
        let words = vocabWords[indexPath.row]
        
        cell.textLabel?.text = words.word
        
        //let words = VocabularyWord.

        // Configure the cell...

        return cell
    }
 

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    //THE GOAL OF THIS FUNCTION IS TO GIVE A DEFINITION TO THE DETAIL DEFINITION CONTROLLER SO IT CAN SHOW THE DEFINITION IN A TEXT VIEW
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            
        let detailedVC = segue.destination as? DefinitionViewController
        // Get the new view controller using segue.destination.
            
            if let indexpath = tableView.indexPathForSelectedRow {
                
                let definitions = vocabWords[indexpath.row]
            
        // Pass the selected object to the new view controller.
            detailedVC?.definition = definitions
            
        
        }
    }

  }
}

