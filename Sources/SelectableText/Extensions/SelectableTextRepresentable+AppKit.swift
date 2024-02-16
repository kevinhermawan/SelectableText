//
//  SelectableTextRepresentable+AppKit.swift
//
//
//  Created by Kevin Hermawan on 14/02/24.
//

#if canImport(AppKit)
import AppKit
import SwiftUI

struct SelectableTextRepresentable: NSViewRepresentable {
    var text: String? = nil
    var attributedText: NSAttributedString? = nil
    
    var maxLayoutWidth: CGFloat = .zero
    @Binding var layoutHeight: CGFloat
    
    func makeNSView(context: Context) -> NSTextView {
        let textView = BaseTextView()
        textView.isEditable = false
        textView.isSelectable = true
        textView.backgroundColor = .clear
        textView.font = .preferredFont(forTextStyle: .body)
        
        textView.textContainerInset = .zero
        textView.textContainer?.lineFragmentPadding = 0
        textView.maxLayoutWidth = self.maxLayoutWidth
        
        if let text {
            textView.string = text
        }
        
        if let attributedText {
            textView.isRichText = true
            textView.textStorage?.setAttributedString(attributedText)
        }
        
        return textView
    }
    
    func updateNSView(_ nsView: NSTextView, context: Context) {
        if let text {
            nsView.string = text
        }
        
        if let attributedText {
            nsView.isRichText = true
            nsView.textStorage?.setAttributedString(attributedText)
        }
        
        DispatchQueue.main.async {
            self.layoutHeight = nsView.intrinsicContentSize.height
        }
    }
}
#endif
