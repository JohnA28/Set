//
//  SetCard.swift
//  Set
//
//  Created by John Alban on 3/9/23.
//

import Foundation

struct SetCard: Identifiable {
    
    var shape: Shapes
    var shade: Shades
    var color: Colors
    var count: Int
    var isSelected: Bool
    var isMatched: Bool
    var isMisMatched: Bool
    var id: Int
    
    enum Shapes {
        case circle
        case square
        case diamond
        
        static var all = [Shapes.circle, .square, .diamond]
    }
    
    enum Shades {
        case outlined
        case shaded
        case filled
        
        static var all = [Shades.outlined, .shaded, .filled]
    }
    
    enum Colors {
        case red
        case green
        case purple
        
        static var all = [Colors.red, .green, .purple]
    }
    
    func getCardContent() -> String {
        var shape: String
        
        if self.shade == .outlined {
            switch self.shape {
            case .circle:
                shape = "⭕️"
            case .square:
                shape = "🔲"
            case .diamond:
                shape = "⬦"
            }
        } else {
            switch self.shape {
            case .circle:
                shape = "🔴"
            case .square:
                shape = "🔳"
            case .diamond:
                shape = "⬥"
            }
        }
        
        var cardEmojis = ""
        
        for _ in 1...self.count {
            cardEmojis += shape
        }
        
        return cardEmojis
    }
    
    

    init(shape: Shapes, shade: Shades, color: Colors, count: Int, id: Int) {
        self.shape = shape
        self.shade = shade
        self.color = color
        self.count = count
        self.isSelected = false
        self.isMatched = false
        self.isMisMatched = false
        self.id = id
    }
}
