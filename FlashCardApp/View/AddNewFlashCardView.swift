import SwiftUI

struct AddNewFlashCardView: View {
    @State private var question = ""
    @State private var answer = ""
     
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Adicionar novo flashcard")
                .bold()
                .font(.title2)
                .padding(.top)
            
            ScrollView {
                VStack(spacing: 16) {
                    CustomInputField(
                        systemIcon: "questionmark.circle",
                        placeholder: "Digite sua pergunta",
                        text: $question
                    )
                    
                    CustomInputField(
                        systemIcon: "text.bubble",
                        placeholder: "Insira sua resposta",
                        text: $answer
                    )
                }
                .padding()
            }
        }
    }
}
