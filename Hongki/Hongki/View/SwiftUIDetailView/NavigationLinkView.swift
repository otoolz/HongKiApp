//
//  NavigationLinkView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/04.
//

import SwiftUI

struct NavigationLinkView: View {
    var body: some View {
        
        List {
            ForEach(1..<5, id: \.self) { i in
                NavigationLink(destination: {
                    Text(String(i))
                }, label: {
                    Text("NavigationLink\(String(i))")
                })
            }
        }
    }
}

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
