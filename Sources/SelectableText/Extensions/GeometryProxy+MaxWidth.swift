//
//  GeometryProxy+MaxWidth.swift
//
//
//  Created by Kevin Hermawan on 14/02/24.
//

import SwiftUI

extension GeometryProxy {
    var maxWidth: CGFloat {
        size.width - safeAreaInsets.leading - safeAreaInsets.trailing
    }
}
