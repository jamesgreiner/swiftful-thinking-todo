//
//  AddView.swift
//  SwiftfulThinkingTodo
//
//  Created by James Greiner on 7/7/23.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.lightGray))
                    .cornerRadius(10)
                
                Button("Save".uppercased()) {
                    
                }
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .cornerRadius(10)
            }
            .padding(14)
        }
        .navigationTitle("Add Item 🖊️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddView()
        }
    }
}
