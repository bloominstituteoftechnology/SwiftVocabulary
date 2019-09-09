//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Jonalynn Masters on 9/9/19.
//  Copyright © 2019 Jonalynn Masters. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created")]
                                           [VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants cannot be changed after being created")]
                                           [VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed")]
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }


}
