import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        TabView {
            DeckView()
                .tabItem {
                    Label("My decks", systemImage: "rectangle.stack")
                }
            AddNewFlashCardView()
                .tabItem {
                    Label("Add", systemImage: "plus")
                }
            UserAccountView()
                .tabItem {
                    Label("MyAccount", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
