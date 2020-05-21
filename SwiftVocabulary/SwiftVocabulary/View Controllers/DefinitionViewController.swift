//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Trencadi on 5/20/20.
//  Copyright © 2020 ladonnamayfield. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
   
    @IBOutlet weak var DefinitionLabel: UILabel!
    
    @IBOutlet weak var DefinitionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateViews()
        
    }
    

    func updateViews() {
        if let vocabWord = vocabWord {
            DefinitionLabel.text = vocabWord.word
            DefinitionText.text = vocabWord.definition
        }
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
