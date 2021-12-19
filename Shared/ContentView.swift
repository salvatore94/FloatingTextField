//
//  ContentView.swift
//  Shared
//
//  Created by Salvatore Polito on 19/12/21.
//

import SwiftUI

struct ContentView: View {
    private let labels = ["First Name", "Last Name", "City"]
    @State private var values = Array(repeating: "", count: 5)
    
    var body: some View {
        List(0..<3) { index in
            FloatingTextField(title: labels[index], text: $values[index])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
