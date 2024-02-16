//
//  BaseTextView+AppKit.swift
//
//
//  Created by Kevin Hermawan on 14/02/24.
//

#if canImport(AppKit)
import SwiftUI

class BaseTextView: NSTextView {
    var maxLayoutWidth: CGFloat = 0 {
        didSet {
            guard maxLayoutWidth != oldValue else { return }
            
            self.textContainer?.containerSize = CGSize(width: maxLayoutWidth, height: .greatestFiniteMagnitude)
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        guard maxLayoutWidth > 0 else {
            return super.intrinsicContentSize
        }
        
        guard let textContainer = self.textContainer, let layoutManager = self.layoutManager else {
            return super.intrinsicContentSize
        }
        
        textContainer.containerSize = CGSize(width: maxLayoutWidth, height: .greatestFiniteMagnitude)
        textContainer.widthTracksTextView = true
        
        layoutManager.ensureLayout(for: textContainer)
        let textBoundingBox = layoutManager.usedRect(for: textContainer)
        
        return CGSize(width: ceil(textBoundingBox.size.width), height: ceil(textBoundingBox.size.height))
    }
}
#endif
