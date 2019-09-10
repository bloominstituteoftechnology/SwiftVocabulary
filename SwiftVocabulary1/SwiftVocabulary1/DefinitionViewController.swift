//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Jesse Ruiz on 9/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    func updateviews() {
        guard let vocab = vocabWord else { return }
        definitionLabel.text = vocab.word
        definitionTextView.text = vocab.definition
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateviews()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
