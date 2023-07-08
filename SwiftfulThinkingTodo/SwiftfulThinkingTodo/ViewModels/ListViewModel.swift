//
//  ListViewModel.swift
//  SwiftfulThinkingTodo
//
//  Created by James Greiner on 7/7/23.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [Item] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            Item(title: "This is the first title", isCompleted: false),
            Item(title: "This is the second title", isCompleted: true),
            Item(title: "This is the third title", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func addItem(title: String) {
        let newItem = Item(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: Item) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
