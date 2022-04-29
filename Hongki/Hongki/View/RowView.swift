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
                .font(.largeTitle)
                .frame(width: 70, height: 70, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .background(Color("WhiteSmoke"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.caption)
                Text("9 page")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 10)
            
            Spacer()
        }
        .padding(10)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(iconName: "leaf", title: "hoho", description: "hahaha")
    }
}
