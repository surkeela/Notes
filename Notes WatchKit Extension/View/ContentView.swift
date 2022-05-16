//
//  ContentView.swift
//  Notes WatchKit Extension
//
//  Created by Nerijus Surkys on 2022-05-16.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add new Note", text: $text)
                
                Button {
                    // 1. Only run the button's action when the text field is not empty
                    // 2. Create a new note item and initialize it with the text value
                    // 3. Add the note item to the notes array (append)
                    // 4. Make the text field empty
                    // 5. Save the notes (function)
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
//                .buttonStyle(BorderedButtonStyle(tint: .accentColor))
            } //: HSTACK
            
            Spacer()
        } //: VSTACK
        .navigationTitle("Notes")
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
