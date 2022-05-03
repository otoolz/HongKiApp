//
//  GitDetailView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/03.
//

import SwiftUI

struct GitDetailView: View {
    let detailTitle: String
    var body: some View {
        Image(detailTitle)
            .scaledToFit()
    }
}

struct GitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GitDetailView(detailTitle: "git_flow")
    }
}
