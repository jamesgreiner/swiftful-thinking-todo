//
//  Item.swift
//  SwiftfulThinkingTodo
//
//  Created by James Greiner on 7/7/23.
//

import Foundation

struct Item: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
