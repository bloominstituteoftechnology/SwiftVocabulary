//
//  ViewController.swift
//  SwiftVocabulary
//
//  Created by brian vilchez on 8/12/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class VocabularyTableViewController: UIViewController {

    //MARK: - properties
    var wordController = WordController()
    
    //MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()
//       UITableViewDelegate = self
//        UITableViewDataSource = self
//     self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowVocabularyDefinition" {
          //  guard let definitionDetailVC = segue.destination as? VocabularyDefinitionViewController else {return}
            
        }
    }
    
    
}
extension VocabularyTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordController.words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = wordController.words[indexPath.row]
        cell.textLabel?.text = word.word
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            wordController.words.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}
