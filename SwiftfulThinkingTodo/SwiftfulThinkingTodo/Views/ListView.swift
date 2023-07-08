//
//  ListView.swift
//  SwiftfulThinkingTodo
//
//  Created by James Greiner on 7/7/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [Item] = [
        Item(title: "This is the first title", isCompleted: false),
        Item(title: "This is the second title", isCompleted: true),
        Item(title: "This is the third title", isCompleted: false),
    ]
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }
    }
}
