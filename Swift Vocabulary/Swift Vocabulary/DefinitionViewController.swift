//
//  ViewController.swift
//  Swift Vocabulary
//
//  Created by Waseem Idelbi on 5/12/22.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    //MARK: - Properties
    var vocabWord: VocabularyWord?

    //MARK: - IBOutlets
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var wordDefinitionTextView: UITextView!
    
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let word = vocabWord else { return }
        wordLabel.text = word.word
        wordDefinitionTextView.text = word.definition
    }


}

