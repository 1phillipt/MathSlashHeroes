import SwiftUI

/// A SwiftUI wrapper around `UIActivityViewController` for presenting a share sheet.
public struct S2EShareSheet: UIViewControllerRepresentable {
    public let items: [Any]
    public let fallbackItem: Any?

    public init(items: [Any], fallbackItem: Any? = nil) {
        self.items = items
        self.fallbackItem = fallbackItem
    }

    public func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityItems = !items.isEmpty ? items : fallbackItem.map { [$0] } ?? [""]
        return UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
    }

    public func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
