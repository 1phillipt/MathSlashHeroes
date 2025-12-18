import SwiftUI

/// A SwiftUI wrapper around `UIActivityViewController` for presenting a share sheet.
public struct S2EShareSheet: UIViewControllerRepresentable {
    public let items: [Any]

    public init(items: [Any]) {
        self.items = items
    }

    public func makeUIViewController(context: Context) -> UIActivityViewController {
        assert(!items.isEmpty, "S2EShareSheet requires at least one item to share.")
        let activityItems = items.isEmpty ? ["Check out Math Slash Heroes!"] : items
        return UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
    }

    public func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
