import SwiftData

@Model
final class Flashcard {
    var question: String
    var answer: String
    var isAnswered: Bool
    var isCorrect: Bool
    
    init(question: String, answer: String, isAnswered: Bool, isCorrect: Bool){
        self.question = question
        self.answer = answer
        self.isAnswered = isAnswered
        self.isCorrect = isCorrect
    }
}
