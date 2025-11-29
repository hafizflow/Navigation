//
//  AttributedStringView.swift
//  Navigation
//
//  Created by Hafizur Rahman on 29/11/25.
//

import SwiftUI

struct AttributedStringView: View {
    @State private var text = AttributedString()
    
    var body: some View {
        TextEditor(text: $text)
            .font(.largeTitle.bold())
            .padding()
    }
}

#Preview {
    AttributedStringView()
}
