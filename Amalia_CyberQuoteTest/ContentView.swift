//
//  ContentView.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 10/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var inputText = ""
    
    var body: some View {
        VStack {
            TextField("Enter number", text: $inputText, onEditingChanged: { (isEditing) in
                // When editing begins, remove formatting
                if !isEditing {
                    self.formatInput()
                }
            }, onCommit: {
                // When the user presses return or taps outside the text field, format the input
                self.formatInput()
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            Text("Formatted number: \(inputText)")
                .padding()
        }
    }
    
    private func formatInput() {
        if inputText.count >= 9 {
            // Use string manipulation to format the input
            let formattedText = "\(inputText.prefix(3))-\(inputText.dropFirst(3).prefix(3))-\(inputText.suffix(3))"
            inputText = formattedText
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
