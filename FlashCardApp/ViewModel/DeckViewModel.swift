import Foundation
import SwiftUI


final class DeckViewModel: ObservableObject {
    @Published var decks: [DeckStruct] = []
    @Published var pills: [PillStruct] = []

    init() {
        loadDecks()
        loadPills()
    }

    func loadDecks() {
        decks = [
            DeckStruct(title: "Inglês", caption: "Este deck contém flashcards relacionados ao aprendizado do idioma inglês."),
            DeckStruct(title: "Swift", caption: "Flashcards sobre desenvolvimento iOS com Swift."),
            DeckStruct(title: "Segurança", caption: "Pratique conceitos de cibersegurança.")
        ]
    }
    
    func loadPills() {
        pills = [
            PillStruct(title: "Swift"),
            PillStruct(title: "iOS"),
            PillStruct(title: "UI Design"),
            PillStruct(title: "Biologia"),
            PillStruct(title: "Física"),
            PillStruct(title: "História"),
            PillStruct(title: "Matemática"),
            PillStruct(title: "Química"),
            PillStruct(title: "Literatura"),
            PillStruct(title: "Geografia")
        ]
    }

}
