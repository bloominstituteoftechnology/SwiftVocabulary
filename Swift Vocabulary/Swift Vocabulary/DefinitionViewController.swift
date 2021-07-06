//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Isaac Lyons on 9/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var WordLabel: UILabel!
    @IBOutlet weak var DefinitionTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let unwrappedVocabWord = vocabWord else {return}
        
        WordLabel.text = unwrappedVocabWord.word
        DefinitionTextView.text = unwrappedVocabWord.definition
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
