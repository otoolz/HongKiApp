//
//  BaseTabView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct BaseTabView: View {
    var body: some View {
        TabView {
            ForEach(Tab.allCases, id: \.self) { tab in
                tab.view
                    .tabItem {
                        Image(systemName: tab.imageSystemName)
                        Text(tab.title)
                    }
            }
        }
    }
}

struct BaseTabView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
