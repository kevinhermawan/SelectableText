//
//  BaseTextView+UIKit.swift
//
//
//  Created by Kevin Hermawan on 14/02/24.
//

#if canImport(UIKit)
import SwiftUI

class BaseTextView: UITextView {
    var maxLayoutWidth: CGFloat = 0 {
        didSet {
            guard maxLayoutWidth != oldValue else { return }
            
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        guard maxLayoutWidth > 0 else {
            return super.intrinsicContentSize
        }
        
        return sizeThatFits(
            CGSize(width: maxLayoutWidth, height: .greatestFiniteMagnitude)
        )
    }
}
#endif
