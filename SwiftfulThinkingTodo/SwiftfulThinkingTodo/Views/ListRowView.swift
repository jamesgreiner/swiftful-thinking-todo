//
//  ListRowView.swift
//  SwiftfulThinkingTodo
//
//  Created by James Greiner on 7/7/23.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListRowView(title: "Test")
        }
    }
}
