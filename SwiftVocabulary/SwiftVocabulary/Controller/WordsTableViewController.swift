//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Shawn Gee on 2/16/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords = [VocabularyWord]()
    let webScraper =  WebScraper()
    
    let activityIndicatorView = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(activityIndicatorView)
        activityIndicatorView
            .centerHorizontally()
            .centerVertically()
            .constrain(width: 200, height: 200)
        activityIndicatorView.startAnimating()
        activityIndicatorView.style = .large
        
        fetchVocabWords()
        
    }
    
    
    func fetchVocabWords() {
        webScraper.fetchVocabWords { [weak self] vocabWords in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.vocabWords = vocabWords
                self.tableView.reloadData()
                self.activityIndicatorView.stopAnimating()
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue",
           let definitionViewController = segue.destination as? DefinitionViewController,
           let selectedRow = tableView.indexPathForSelectedRow?.row
        {
            definitionViewController.vocabWord = vocabWords[selectedRow]
        }
    }

}
