//
//  ButtonView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/04.
//

import SwiftUI

struct ButtonView: View {
    @State private var countButton: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    countButton += 1
                }, label: {
                    Text("Up")
            }).frame(maxWidth: .infinity, alignment: .leading)
                    .buttonStyle(.borderedProminent)
                
                Text("count : \(String(countButton))")
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
