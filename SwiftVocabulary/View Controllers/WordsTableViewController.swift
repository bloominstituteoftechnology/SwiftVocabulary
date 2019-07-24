//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Jessie Ann Griffin on 7/23/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    let vocabController = VocabularyController()
    
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
        return vocabController.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let word = vocabController.vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            guard let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let definition = vocabController.vocabWords[indexPath.row]
            definitionVC.vocabWord = definition
        }
    }
 

}
