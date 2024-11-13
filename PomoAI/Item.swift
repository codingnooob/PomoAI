//
//  Item.swift
//  PomoAI
//
//  Created by Ty on 2024-11-12.
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
