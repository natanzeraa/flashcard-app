import SwiftUI

extension Color {
    static func smartRandom(for colorScheme: ColorScheme) -> Color {
        switch colorScheme {
        case .dark:
            // Em temas escuros, use cores mais claras
            return Color(
                red: .random(in: 0.7...1),
                green: .random(in: 0.7...1),
                blue: .random(in: 0.7...1)
            )
        case .light:
            // Em temas claros, use cores mais escuras
            return Color(
                red: .random(in: 0.2...0.5),
                green: .random(in: 0.2...0.5),
                blue: .random(in: 0.2...0.5)
            )
        @unknown default:
            return .gray
        }
    }
}
