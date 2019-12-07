//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/5/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let destination = segue.destination as? DefinitionViewController {
                let selectedRow = tableView.indexPathForSelectedRow
                if let row = selectedRow?.row {
                    if let word = vocabWords?[row] {
                        destination.vocabWord = word
                    }
                }
                
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
