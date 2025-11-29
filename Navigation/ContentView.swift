import SwiftUI

struct DetailView: View {
    var num: Int
    @Binding var path: NavigationPath
    
    var body: some View {
        NavigationLink("Go to next page", value: Int.random(in: 1...1000))
            .navigationTitle("Page \(num)")
            .toolbar {
                Button("Home") {
                    path = NavigationPath()
                }
            }
    }
}

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DetailView(num: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailView(num: i, path: $path)
                }
        }
    }
}

#Preview {
    ContentView()
}
