//
//  WordsTableTableViewController.swift
//  Swift Vocabulary 2
//
//  Created by Clean Mac on 4/15/20.
//  Copyright © 2020 LambdaStudent. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    var definitions: [VocabularyWord] = [
        VocabularyWord(word:"Vocab1", definition: "Def1"),
        VocabularyWord(word:"Vocab2", definition: "Def2"),
        VocabularyWord(word:"Vocab3", definition: "Def3"),
        
    ]

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return definitions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let definitionLabel = definitions[indexPath.row]
        cell.textLabel?.text = definitionLabel.word
        return cell
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue" {
        if let definitionVC = segue.destination as?
            DefinitionViewController,
            let indexPath = self.tableView.indexPathForSelectedRow
        {
            definitionVC.definition = definitions[indexPath.row]
            }
        }
        // Pass the selected object to the new
    }
    

}
