//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Steven Leyva on 5/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }
    
    private func updateViews() {
        guard let vocabWord = vocabWord, isViewLoaded else { return }
        
        definitionTextView.text = vocabWord.definition
        
    }
    
    var vocabularyWord: VocabularyWord? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
