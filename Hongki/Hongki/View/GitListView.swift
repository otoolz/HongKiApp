//
//  GitListView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct GitListView: View {
    var body: some View {
        NavigationView {
            VStack {
                TitleText(title: "Git")
            
                List {
                    ForEach(Git.allCases, id:\.self) { gitRow in
                        NavigationLink {
                            GitDetailView(detailTitle: gitRow.pageTitle)
                                .navigationTitle(gitRow.title)
                                .navigationBarTitleDisplayMode(.inline)
                        } label: {
                            RowView(iconName: gitRow.iconName, title: gitRow.title, description: gitRow.description)
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

struct GitListView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
