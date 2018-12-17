//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Luke on 7/10/18.
//  Copyright © 2018 Luke Yuan. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    private(set) var cards = [PlayingCard]()
    
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: Int(arc4random_uniform(UInt32(cards.count))))
        }
        return nil
    }
}
