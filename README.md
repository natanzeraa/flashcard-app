# Flashcard APP

> Você usa para memorizar, praticar e revisar conteúdos.

![MacOS](https://img.shields.io/badge/IOS-FA2848?style=for-the-badge&logo=apple&logoColor=white)
![Swift](https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-0A84FF?style=for-the-badge&logo=swift&logoColor=white)
![SwiftData](https://img.shields.io/badge/SwiftData-FA2474?style=for-the-badge&logo=swift&logoColor=white)

----

### 🧠 Conceito: Spaced Repetition System (SRS)
_Baseado na curva do esquecimento de Ebbinghaus._

O app mostra com mais frequência os cartões que o usuário erra, e com menos frequência os que ele acerta repetidamente.


## Funcionalidades

| Funcionalidade                   | Descrição                                                           |
| ---------------------------------| --------------------------------------------------------------------|
| Criar novo flashcard              | Formulário com pergunta/resposta                                    |
| Revisar flashcards do dia         | Lista só com os que `nextReview <= now`                             |
| Marcar como "Acertei" ou "Errei" | Atualiza score e data de revisão                                    |
| Buscar e editar flashcards        | Por palavra-chave                                                   |
| Animação de flip                  | Flip horizontal tipo carta (com `rotation3DEffect`)                 |
| Persistência de dados            | `SwiftData`                                                         |
| Contador diário de revisões      | Quantos cards revisou hoje                                          |
