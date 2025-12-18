import SwiftUI

/// A SwiftUI wrapper around `UIActivityViewController` for presenting a share sheet.
/// - Parameters:
///   - items: Shareable content (for example `String`, `URL`, or `UIImage`).
///   - fallbackItem: Optional content used when `items` is empty; defaults to a generic placeholder.
public struct S2EShareSheet: UIViewControllerRepresentable {
    public let items: [Any]
    public let fallbackItem: Any?

    public init(items: [Any], fallbackItem: Any? = nil) {
        self.items = items
        self.fallbackItem = fallbackItem
    }

    public func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityItems = !items.isEmpty ? items : fallbackItem.map { [$0] } ?? ["Shared item"]
        return UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
    }

    public func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // UIActivityViewController does not support updating its items after creation.
    }
}
