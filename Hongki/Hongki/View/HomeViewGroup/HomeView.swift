//
//  HomeView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            TitleText(title: "NC1 Intro")
            
            Image(systemName: "leaf")
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
