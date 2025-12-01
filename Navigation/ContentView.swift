import SwiftUI





struct DetailView: View {
    var num: Int
    
    var body: some View {
        NavigationLink("Go to next page", value: Int.random(in: 1...1000))
            .navigationTitle("Page \(num)")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                Button("Hello", systemImage: "action") {}
            }
    }
}

struct ContentView: View {
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView(num: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView(num: i)
                }
        }
    }
}

#Preview {
    ContentView()
}
