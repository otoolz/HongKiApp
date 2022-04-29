//
//  TitleText.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI

struct TitleText: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .bold()
            .padding(10)
    }
}
