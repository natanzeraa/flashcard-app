import SwiftUI

struct AddNewDeckView: View {
    @State private var deckName = ""    
    @State private var caption = ""
    
    var onAddDeck: (DeckStruct) -> Void
     
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Adicionar novo deck")
                .bold()
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)

            
            ScrollView {
                VStack(spacing: 16) {
                    CustomInputField(
                        systemIcon: "questionmark.circle",
                        placeholder: "Dê um nome ao seu deck",
                        text: $deckName
                    )
                    
                    Button(action:{
                        let newDeck = DeckStruct(title: deckName, caption: caption)
                        onAddDeck(newDeck)
                    }){
                        Text("Salvar")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(deckName.isEmpty ? Color.gray : Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .disabled(deckName.isEmpty)
                }
                .padding()
            }
        }
    }
}
