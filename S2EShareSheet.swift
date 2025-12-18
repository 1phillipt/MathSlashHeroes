import SwiftUI

/// A SwiftUI wrapper around `UIActivityViewController` for presenting a share sheet.
struct S2EShareSheet: UIViewControllerRepresentable {
    let items: [Any]

    func makeUIViewController(context: Context) -> UIActivityViewController {
        precondition(!items.isEmpty, "S2EShareSheet requires at least one item to share.")
        return UIActivityViewController(activityItems: items, applicationActivities: nil)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
