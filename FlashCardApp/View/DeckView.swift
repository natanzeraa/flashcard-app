import SwiftUI

struct DeckStruct: Identifiable {
    let id = UUID()
    let title: String
    let caption: String
}

struct PillStruct: Identifiable {
    let id = UUID()
    let title: String
}

struct Pill: View {
    let pill: PillStruct
    @Environment(\.colorScheme) var scheme

    var body: some View {
        Text(pill.title)
            .pillStyle(color: Color.smartRandom(for: scheme))
    }
}

struct DeckCard: View {
    let deck: DeckStruct
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            HStack {
                Text(deck.title)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .colorInvert()
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .truncationMode(.tail)
                
                Text("5 perguntas")
                    .font(.subheadline)
                    .italic()
                    .colorInvert()
            }

            Text(deck.caption)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .colorInvert()
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.smartRandom(for: scheme))
        .cornerRadius(12)
        .shadow(radius: 5)
        .padding(.horizontal)
    }
}

struct DeckView: View {
    @StateObject private var viewModel = DeckViewModel()
    @State private var isNavigating = false

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("My Decks")
                        .bold()
                        .font(Font.title2)
                
                    Text("\(viewModel.decks.count) Decks")
                        .font(Font.caption)
                
                    Spacer()
                
                    Button(action: { isNavigating = true } ) {
                        Image(systemName: "plus")
                            .font(.title2)
                            .padding(8)
                            .background(Color.blue.opacity(0.1))
                            .clipShape(Circle())
                    }
                }
                .navigationDestination(isPresented: $isNavigating) {
                    AddNewFlashCardView()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(viewModel.pills) { pill in
                        Pill(pill: pill)
                    }
                }
                .padding(.horizontal)
            }
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.decks) { deck in
                        DeckCard(deck: deck)
                    }
                }
                .padding(.top)
            }
        }
    }
}
