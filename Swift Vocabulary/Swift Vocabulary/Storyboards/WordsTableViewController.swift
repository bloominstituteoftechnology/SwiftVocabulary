//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Marissa Gonzales on 4/13/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    
    var myVocabWords: [SwiftWords] = [
        
        SwiftWords(word: "Var",
                   definition: "var keyword is mutable in swift is used to declare variant value, That value can change at run time."),
        
        SwiftWords(word: "Let",
                   definition: "Let is used to declare constant value and immutable can never be changed once defined"),
        
        SwiftWords(word: "Optional",
                   definition: "An optional is something can that hold a value but can also be 'nil'")
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myVocabWords.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let indexPath = tableView.indexPathForSelectedRow
        
        
        

        // Configure the cell...

        return cell
    }
  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
}
 
