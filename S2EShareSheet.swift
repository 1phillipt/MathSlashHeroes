import SwiftUI

/// A SwiftUI wrapper around `UIActivityViewController` for presenting a share sheet.
struct S2EShareSheet: UIViewControllerRepresentable {
    let items: [Any]

    func makeUIViewController(context: Context) -> UIActivityViewController {
        assert(!items.isEmpty, "S2EShareSheet requires at least one item to share.")
        let activityItems = items.isEmpty ? [""] : items
        return UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
