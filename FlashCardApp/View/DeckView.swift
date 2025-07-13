import SwiftUI

struct DeckStruct: Identifiable {
    let id = UUID()
    let title: String
    let caption: String
}

struct DeckCard: View {
    let deck: DeckStruct

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(deck.title)
                .font(.headline)
                .multilineTextAlignment(.center)
                .colorInvert()
                .lineLimit(1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .truncationMode(.tail)


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
        .background(Color.random)
        .cornerRadius(12)
        .shadow(radius: 5)
        .padding(.horizontal)
    }
}

struct DeckView: View {
    
    let cardMap: [DeckStruct] = [
        DeckStruct(title: "Inglês", caption: "Este deck contém flashcards relacionados ao aprendizado do idioma inglês."),
        DeckStruct(title: "Swift", caption: "Flashcards sobre desenvolvimento iOS com Swift."),
        DeckStruct(title: "Segurança", caption: "Pratique conceitos de cibersegurança.")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("My Decks")
                    .bold()
                    .font(Font.title2)
                Text("? Decks")
                    .font(Font.caption)
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(cardMap) { deck in
                        DeckCard(deck: deck)
                    }
                }
                .padding(.top)
            }
        }
    }
}
