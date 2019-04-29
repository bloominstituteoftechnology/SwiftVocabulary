//
//  VocabListTableViewController.swift
//  SwiftVocabulary-CP-iOS6
//
//  Created by Chris Price on 4/29/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import UIKit

class VocabListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    vocabController.createVocabTerm()
    }

/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
*/
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabController.vocabTerms.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TermCell", for: indexPath)
        let term = vocabController.vocabTerms[indexPath.row]
        
        cell.textLabel?.text = term.term
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            guard let detailVC = segue.destination as? VocabTermDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return
            }
            detailVC.vocabTerm = vocabController.vocabTerms[indexPath.row]
        }
    }
    
    let vocabController = VocabController()
    
}
