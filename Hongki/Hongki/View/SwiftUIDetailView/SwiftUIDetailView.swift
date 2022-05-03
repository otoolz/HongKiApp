//
//  PickerDetailView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/02.
//

import SwiftUI

struct SwiftUIDetailView: View {
    
    let row: SwiftUI
    @State private var isDevSheet: Bool = false
    @State private var isHIGSheet: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text(row.title) // SwiftUI.title
                Spacer()
                Button(action: {
                    isDevSheet = true
                }, label: {
                    Image(systemName: "doc")
                })
                .sheet(isPresented: $isDevSheet, content: {
                    WebSheetView(isSheet: $isDevSheet, url: row.docURL)
                })
                
                Button(action: {
                    isHIGSheet = true
                }, label: {
                    Image(systemName: "paintpalette")
                })
                .sheet(isPresented: $isHIGSheet, content: {
                    WebSheetView(isSheet: $isHIGSheet, url: row.higURL)
                })
            }
            Divider()
            
            ////////////////////////////////////////            SwiftUI.DetailView()                     ///////l//////////////ll//////
            row.view
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        }
        .padding()
        .background(Color("WhiteSmoke"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(10)
        
        Spacer()
        
    }
}

struct PickerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDetailView(row: SwiftUI.picker)
    }
}
