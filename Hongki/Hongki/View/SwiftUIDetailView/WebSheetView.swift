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

