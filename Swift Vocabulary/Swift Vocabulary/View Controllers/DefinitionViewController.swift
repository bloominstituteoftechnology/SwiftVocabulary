//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Gavin Murphy on 9/18/19.
//  Copyright © 2019 Gavin Murphy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord? 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        
        if vocabWord != nil {  // stuck here, Implement DefinitionViewController, step 3 to unwrap
            vocabWord.definition = ""
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
