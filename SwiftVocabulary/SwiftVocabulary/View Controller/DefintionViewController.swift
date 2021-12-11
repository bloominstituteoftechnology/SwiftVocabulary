//
//  DefintionViewController.swift
//  SwiftVocabulary
//
//  Created by Sammy Alvarado on 2/24/21.
//

import UIKit

class DefintionViewController: UIViewController {
    
    // MARK: - Property
    var vocabWords: VocabularyWord?

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    

    func updateViews() {
        guard let vocabWord = vocabWords else { return }
        
        wordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }

}
