//
//  SetGame.swift
//  Set
//
//  Created by John Alban on 3/9/23.
//

import Foundation

struct setGame {
    private let numberOfSetCardsInANewGame = 12
    private var deck: SetCardDeck
    var cards = [SetCard]()
    var score = 0
    
    mutating func addThreeCards() {
        
    }
    
    mutating func selectCard(_ card: SetCard) {
        
    }
    
    init() {
        self.deck = SetCardDeck()
        
        for _ in 0..<numberOfSetCardsInANewGame {
            if let setCard = self.deck.dealCard() {
                cards.append(setCard)
            }
        }
    }
    
}
