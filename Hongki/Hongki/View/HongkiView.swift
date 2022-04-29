//
//  HongkiView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct HongkiView: View {
    var body: some View {
        VStack {
            HStack {
                TitleText(title: "HongKi")
                
                Button {
                } label: {
                    Image(systemName: "square.and.pencil")
                }
            }
            
            Image("HongkiMemoji")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
            
            Group {
                Text("life quotes")
            
                VStack {
                    Text("background")
                    Text("email")
                    Text("phone")
                }
            
                VStack {
                    Text("Achievement")
                    HStack {
                        VStack {
                            Text("Swift")
                            Image(systemName: "swift")
                            Text("100%")
                        }
                        VStack {
                            Text("SwiftUI")
                            Image(systemName: "uiwindow.split.2x1")
                            Text("100%")
                        }
                        VStack {
                            Text("Git")
                            Image(systemName: "app.connected.to.app.below.fill")
                            Text("100%")
                        }
                    }
                }
            }
            .frame(width: .infinity)
            .padding(20)
            .background(Color("WhiteSmoke"))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(10)
            
            Spacer()
        }
    }
}

struct HongkiView_Previews: PreviewProvider {
    static var previews: some View {
        HongkiView()
    }
}
