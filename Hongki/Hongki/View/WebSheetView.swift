//
//  WebTestView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/02.
//

import SwiftUI
import WebKit

struct WebSheetView: View {
    @Binding var isSheet:Bool
    var url: String
    
    var body: some View {
        VStack {
            Button(action: {
                isSheet.toggle()
            }, label: {
                Text("done")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 20)
            })
            .padding()
            LoadWebView(urlToLoad: url)
        }
    }
}
struct LoadWebView: UIViewRepresentable {
    
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
    }
        let webview = WKWebView()
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
    
}
