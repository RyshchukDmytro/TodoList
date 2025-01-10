//
//  AddView.swift
//  TodoList
//
//  Created by Dmytro Ryshchuk on 1/9/25.
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
                    .background(Color.gray.opacity(0.45))
                    .clipShape(.buttonBorder)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(.buttonBorder)
                })
            }
            .padding(14)
            
        }
        .navigationTitle("Add an Item")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
