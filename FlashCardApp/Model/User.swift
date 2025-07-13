import SwiftData

@Model
final class User {
    var name: String
    var email: String
    
    init(name: String, email: String){
        self.name = name
        self.email = email
    }
}
