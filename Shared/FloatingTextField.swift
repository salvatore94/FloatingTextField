//
//  FloatingTextField.swift
//  FloatingTextField
//
//  Created by Salvatore Polito on 19/12/21.
//

import SwiftUI

struct FloatingTextField : View {
    let title: String
    let text: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .foregroundColor(Color(.placeholderText))
                //.font(.caption)
                //.opacity(text.wrappedValue.isEmpty ? 0 : 1)
                .offset(y: text.wrappedValue.isEmpty ? 20 : 0)
                .scaleEffect(text.wrappedValue.isEmpty ? 1 : 0.8, anchor: .leading)
            TextField("", text: text)
        }
        .animation(.default, value: !text.wrappedValue.isEmpty)
        //value of .animation serves as sentinel to start the animation? yes
    }
}

