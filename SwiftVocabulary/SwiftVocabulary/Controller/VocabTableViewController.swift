//
//  VocabTableViewController.swift
//  SwiftVocabulary
//
//  Created by Aaron on 7/23/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

class VocabTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    vocabWords.append(constant)
    vocabWords.append(variable)
    vocabWords.append(function)
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vocabCell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        return vocabCell
    }


 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
        if segue.identifier == "ShowDefinitionSegue" {
            guard tableView.indexPathForSelectedRow != nil else { return }
            
            
            
        }
        
        
    }
 

}
