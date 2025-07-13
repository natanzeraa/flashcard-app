import SwiftData

@Model
final class Deck {
    var title: String
    var caption: String
    
    init(title: String, caption: String) {
        self.title = title
        self.caption = caption
    }
}
