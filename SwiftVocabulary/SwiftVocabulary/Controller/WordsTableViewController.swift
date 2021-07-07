//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Shawn Gee on 2/16/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabIndex = [String: [VocabularyWord]]()
    var sectionTitles = [String]()
    
    let webScraper =  WebScraper()
    
    let activityIndicatorView = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupActivityIndicator()
        fetchVocabWords()
    }

    func setupActivityIndicator() {
        self.view.addSubview(activityIndicatorView)
        activityIndicatorView
            .centerHorizontally()
            .centerVertically()
            .constrain(width: 200, height: 200)
        activityIndicatorView.startAnimating()
        activityIndicatorView.style = .large
    }
    
    func fetchVocabWords() {
        webScraper.fetchVocabWords { [weak self] vocabWords in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.buildVocabIndex(withVocabWords: vocabWords)
                self.tableView.reloadData()
                self.activityIndicatorView.stopAnimating()
            }
        }
    }
    
    func buildVocabIndex(withVocabWords vocabWords: [VocabularyWord]) {
        for vocabWord in vocabWords {
            let key = String(vocabWord.word.prefix(1))
            
            if var value = vocabIndex[key] {
                value.append(vocabWord)
                vocabIndex[key] = value
            } else {
                vocabIndex[key] = [vocabWord]
            }
        }
        
        sectionTitles = [String](vocabIndex.keys)
        sectionTitles.sort { $0 < $1 }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        sectionTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let key = sectionTitles[section]
        if let values = vocabIndex[key] {
            return values.count
        }
        
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let key = sectionTitles[indexPath.section]
        if let values = vocabIndex[key] {
            cell.textLabel?.text = values[indexPath.row].word
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionTitles[section]
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        sectionTitles
    }

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue",
           let definitionViewController = segue.destination as? DefinitionViewController,
           let selectedIndex = tableView.indexPathForSelectedRow {
            let key = sectionTitles[selectedIndex.section]
            if let values = vocabIndex[key] {
                definitionViewController.vocabWord = values[selectedIndex.row]
            }
        }
    }

}
