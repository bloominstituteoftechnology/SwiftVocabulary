//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by James McDougall on 12/6/20.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let cellContents = vocabWord else { return }
        titleLabel.text = cellContents.word
        definitionTextView.text = cellContents.definition
    }

}
