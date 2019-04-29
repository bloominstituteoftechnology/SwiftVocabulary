//
//  VocabTermDetailViewController.swift
//  SwiftVocabulary-CP-iOS6
//
//  Created by Chris Price on 4/29/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import UIKit

class VocabTermDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        }
        
    func updateViews() {
        guard isViewLoaded else { return }
            
        if let term = vocabTerm?.term, let definition = vocabTerm?.definition {
            termLabel.text = term
            definitionLabel.text = definition
        }
        
        }
        
        var vocabTerm: VocabTerm? {
            didSet {
                updateViews()
            }
        }

    @IBOutlet weak var termLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
}
