//
//  ContentView.swift
//  Navigation
//
//  Created by Hafizur Rahman on 29/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Go to 32") {
                    path.append(32)
                }
                
                Button("Go to hello") {
                    path.append("hello")
                }
            }
            .navigationDestination(for: Int.self) { selected in
                Text("You selected \(selected)")
            }
            .navigationDestination(for: String.self) { selected in
                Text("You selected \(selected)")
            }
        }
    }
}

#Preview {
    ContentView()
}
