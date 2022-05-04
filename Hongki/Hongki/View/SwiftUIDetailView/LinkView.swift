//
//  LinkView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/04.
//

import SwiftUI

struct LinkView: View {
//    @Environment(\.openURL) var openURL
    var body: some View {
        Link(destination: URL(string: "https://developer.apple.com")!, label: {
            HStack {
                Image(systemName: "applelogo")
                Text("Apple Developer")
            }
        })
       /*
        Button("text") {
            openURL(URL(string: "developer.apple.com")!)
        }
        */
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
