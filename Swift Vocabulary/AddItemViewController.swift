//
//  AddItemViewController.swift
//  Swift Vocabulary
//
//  Created by Kenneth Jones on 4/8/20.
//  Copyright © 2020 Kenneth Jones. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    
    var newDef: VocabularyWord?
    
    @IBOutlet weak var wordField: UITextField!
    
    @IBOutlet weak var defText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // TextView border color code sourced from https://www.richardhsu.me/posts/2015/01/17/textview-border.html
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        defText.layer.borderWidth = 0.5
        defText.layer.borderColor = borderColor.cgColor
        defText.layer.cornerRadius = 5.0
    }
    
    // MARK: - Navigation
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if wordField.text == "" || defText.text == "" {
            let alert = UIAlertController(title: "Blank Entry!", message: "You need to enter something in both fields.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return false
        }
        return true
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let newWord = wordField.text {
            newDef = VocabularyWord(word: newWord, definition: defText.text)
        }
    }
}
