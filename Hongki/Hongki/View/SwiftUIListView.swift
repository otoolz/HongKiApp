//
//  SwiftUIListView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct SwiftUIListView: View {
    var body: some View {
        VStack {
            TitleText(title: "SwiftUI")
            
            List {
                ForEach(SwiftUI.allCases, id:\.self) { SwiftUIRow in
                    RowView(iconName: SwiftUIRow.iconName, title: SwiftUIRow.title, description: SwiftUIRow.description)
                }
            }
            .listStyle(.plain)
            
            Spacer()
        }
    }
}

struct SwiftUIListView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
