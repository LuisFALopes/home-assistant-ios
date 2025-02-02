import SwiftUI

@available(iOS 13, *)
public struct TextButton: ButtonStyle {
    private let backgroundColor = Color.asset(Asset.Colors.haPrimary)

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minHeight: 40)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 22)
            .padding(.vertical, 10)
            .foregroundColor(.asset(Asset.Colors.haPrimary))
            .background(configuration.isPressed ? backgroundColor.opacity(0.08) : backgroundColor.opacity(0.12))
            .clipShape(RoundedRectangle(cornerRadius: .infinity))
    }
}

@available(iOS 13, *)
public extension ButtonStyle where Self == TextButton {
    static var textButton: some ButtonStyle {
        TextButton()
    }
}

@available(iOS 13, *)
#Preview {
    Button(action: {}) {
        Text("Hello World")
    }
    .buttonStyle(.textButton)
}
