//
//  SwiftListView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct SwiftListView: View {
    var body: some View {
        NavigationView {
            VStack {
            
                TitleText(title: "Swift")
            
                List {
                    ForEach(Swift.allCases, id:\.self) { SwiftRow in
                        NavigationLink {
                            TestView()
                                .navigationTitle(SwiftRow.title)
                                .navigationBarTitleDisplayMode(.inline)
                        } label: {
                            RowView(iconName: SwiftRow.iconName, title: SwiftRow.title, description: SwiftRow.description)
                        }
                    }
                }
                .listStyle(.plain)
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct SwiftListView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
