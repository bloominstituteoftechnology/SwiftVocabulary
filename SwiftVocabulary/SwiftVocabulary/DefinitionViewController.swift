//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by fthmls on 2/17/20.
//  Copyright © 2020 fthmls. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        labelView.text = vocabWord.word
        textView.text = vocabWord.definition
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
