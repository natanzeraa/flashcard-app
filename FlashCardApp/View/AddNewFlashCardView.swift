import SwiftUI

struct AddNewFlashCardView: View {
    @State private var question = "Digite sua pergunta"
    @State private var answer = "Insira sua resposta"
    @State private var deck = "Qual deck deseja atribuir esse flashcard?"

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack {
                Text("Adicionar novo flashcard")
                    .bold()
                    .font(Font.title2)
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack(spacing: 16) {
                    TextField("Pegunta", text: $question)
                        .padding()
                    TextField("Resposta", text: $answer)
                        .padding()
                    TextField("Deck", text: $deck)
                        .padding()
                }
                .padding(.top)
            }
            
        }
    }
}
