//
//  RowView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI

struct RowView: View {
    let iconName: String
    let title: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .padding(20)
                .font(.title)
                .frame(width: 40, height: 40, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .background(Color("WhiteSmoke"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 5)
            
            Spacer()
        }
        .padding(5)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(iconName: "leaf", title: "hoho", description: "hahaha")
    }
}
