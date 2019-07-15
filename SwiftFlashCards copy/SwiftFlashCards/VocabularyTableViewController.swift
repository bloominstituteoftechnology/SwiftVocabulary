//
//  VocabularyTableViewController.swift
//  SwiftFlashCards
//
//  Created by brian vilchez on 7/15/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class VocabularyTableViewController: UITableViewController {
    
    var flashCards = FlashCard()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flashCards.words.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VocabularyCell", for: indexPath)
        let flashCard = flashCards.words[indexPath.row]
        cell.textLabel?.text = flashCard.name
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowWordDetail" {
            guard
                let FlashCardDetailVC = segue.destination as? FlashCardDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let flashCard = flashCards.words[indexPath.row]
            FlashCardDetailVC.flashCard = flashCard
        }
     }


}
