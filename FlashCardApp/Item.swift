//
//  Item.swift
//  FlashCardApp
//
//  Created by Natan Oliveira on 13/07/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
