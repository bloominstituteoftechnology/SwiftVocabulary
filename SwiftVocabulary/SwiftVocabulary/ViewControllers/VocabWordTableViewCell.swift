//
//  VocabWordTableViewCell.swift
//  SwiftVocabulary
//
//  Created by Alex Rhodes on 8/11/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class VocabWordTableViewCell: UITableViewCell {
    
    var vocabWord: VocabWord? {
        didSet {
           updateViews()
        }
    }
    
    func updateViews() {
        textLabel?.text = vocabWord?.word
    }

}
