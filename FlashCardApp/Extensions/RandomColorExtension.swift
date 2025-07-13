import SwiftUI

extension Color {
    static var random: Color {
        Color(
            red: .random(in: 0.2...1),
            green: .random(in: 0.2...1),
            blue: .random(in: 0.2...1)
        )
    }
}
