//
//  ListView.swift
//  SwiftfulThinkingTodo
//
//  Created by James Greiner on 7/7/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first title",
        "This is the second title",
        "This is the third title"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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
