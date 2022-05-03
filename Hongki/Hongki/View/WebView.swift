//
//  WebTestView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/02.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    @Binding var isSheet:Bool
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
