//
//  PickerDetailView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/02.
//

import SwiftUI

struct PickerDetailView: View {
    @State var isDevSheet: Bool = false
    @State var isHIGSheet: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Picker")
                Spacer()
                Button {
                    //action
                    isDevSheet = true
                } label: {
                    Image(systemName: "doc")
                }
//                .sheet(isPresented: $isDevSheet, content: WebView(urlToLoad: "https://developer.apple.com/documentation/swiftui/picker",))
                Button {
                    //action
                    isHIGSheet = true
              //      WebView(urlToLoad: "https://developer.apple.com/design/human-interface-guidelines/ios/controls/pickers/")
                } label: {
                    Image(systemName: "paintpalette")
                }
            }
            Divider()
                Button {
                    //action
                } label: {
                    Text("something modifier")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            
        }
        .padding()
        .background(Color("WhiteSmoke"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(10)
        
    }
}

struct PickerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PickerDetailView()
    }
}
