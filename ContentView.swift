import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: WebView(url: URL(string: "https://imaginegamestech.github.io/NESmu/emulate/run/")!)) {
                    Text("Play")
                }
            }
            .navigationBarTitle("iRetro")
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
