//
//  ColorPickerView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/04.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var pickedColor = Color.blue
    var body: some View {
        Rectangle()
            .frame(width: 120, height: 120, alignment: .center)
            .foregroundColor(pickedColor)
        
        ColorPicker("Pick Color", selection: $pickedColor)
        
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
