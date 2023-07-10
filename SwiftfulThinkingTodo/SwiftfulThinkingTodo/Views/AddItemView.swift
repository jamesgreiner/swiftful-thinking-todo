//
//  AddView.swift
//  SwiftfulThinkingTodo
//
//  Created by James Greiner on 7/7/23.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject private var listViewModel: ListViewModel
    
    @State var textFieldText: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                
                Button("Save".uppercased()) { saveButtonPressed() }
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            .padding(14)
        }
        .alert("Alert", isPresented: $showAlert) {
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Item name cannot be empty")
        }
        .navigationTitle("Add Item 🖊️")
    }
    
    func saveButtonPressed() {
        if textIsValid() {
            listViewModel.addItem(title: textFieldText)
            dismiss()
        } else {
            showAlert.toggle()
        }
    }
    
    func textIsValid() -> Bool {
        return !textFieldText.isEmpty
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
