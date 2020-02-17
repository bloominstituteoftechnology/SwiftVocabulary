//
//  UIView+Layout.swift
//  Currency Swap
//
//  Created by Shawn Gee on 2/12/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

extension UIView {
    @discardableResult
    func centerHorizontally(multiplier: CGFloat = 1) -> UIView {
        guard let superview = superview else { print("view has no superview center in") ; return self}
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: superview, attribute: .centerX, multiplier: multiplier, constant: 0).isActive = true
        return self
    }
    
    @discardableResult
    func centerVertically(multiplier: CGFloat = 1) -> UIView {
        guard let superview = superview else { print("view has no superview center in") ; return self}
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: superview, attribute: .centerY, multiplier: multiplier, constant: 0).isActive = true
        return self
    }
    
    @discardableResult
    func fillSuperview() -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { print("view has no superview to fill") ; return self}
        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            self.topAnchor.constraint(equalTo: superview.topAnchor),
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor),
        ])
        return self
    }
    
    @discardableResult
    func fillHorizontally() -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { print("view has no superview to fill") ; return self}
        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor),
        ])
        return self
    }
    
    @discardableResult
    func constrain(width: CGFloat?, height: CGFloat?) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        if let width = width {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height = height {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        return self
    }
}
