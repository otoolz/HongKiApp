//
//  LoadWebView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/05.
//

import SwiftUI
import WebKit

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
