//
//  VocabTableViewController.swift
//  SwiftVocabulary
//
//  Created by Davit Hovsepyan on 9/9/19.
//  Copyright © 2019 Davit Hovsepyan. All rights reserved.
//

import UIKit

class VocabTableViewController: UITableViewController {
    
    var vocabController = VocabController()
    var vocabWord: VocabWord?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        
        title = "Vocabulary"
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabController.vocabWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VocabWordCell", for: indexPath) as? VocabWordTableViewCell else {return UITableViewCell()}
        
        let vocabWord = vocabController.vocabWords[indexPath.row]
        cell.vocabWord = vocabWord
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddVocabWordSegue" {
            guard let addWordVC = segue.destination as? AddVocabWordViewController else {return}
            addWordVC.vocabController = vocabController
            addWordVC.tableview = tableView
        }
        
        if segue.identifier == "VocabWordDetailSegue" {
            guard let wordDetailVC = segue.destination as? VocabDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow else {return}
            wordDetailVC.vocabController = vocabController
            wordDetailVC.vocabWord = vocabController.vocabWords[indexPath.row]
        }
    }
}
