//
//  MessageModel.swift
//  FintechKids
//
//  Created by Данил Забинский on 01.04.2025.
//

import SwiftUI

struct MessageModel {
    
    static func getMessageViewEdges(isYour: Bool) -> UIRectCorner {
        isYour ? [.topLeft, .topRight, .bottomLeft] : [.topRight, .topLeft, .bottomRight]
    }
    
    static func getMessageColor(isYour: Bool) -> Color {
        isYour ? .text : .message
    }
    
    static func getTextColor(isYour: Bool) -> Color {
        isYour ? .white : .text
    }
    
    static func getMessageStackAlignment(isYour: Bool) -> HorizontalAlignment {
        isYour ? .trailing : .leading
    }
}
