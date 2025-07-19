import SwiftUI

extension View {
    func pillStyle(color: Color) -> some View {
        self
            .font(.caption)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(color.opacity(0.2))
            .foregroundColor(color)
            .cornerRadius(20)
    }
}
