//
//  SliderView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/04.
//

import SwiftUI

struct SliderView: View {
    @State private var sliderValue: Double = 10
    var body: some View {
        VStack {
            
            Text("Slider Value(Double) : \(sliderValue)")
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Slider Value(Int) : \(Int(sliderValue))")
                .frame(maxWidth: .infinity, alignment: .leading)
        
            Slider(value: $sliderValue, in: 0...1000, label: {
                Text("Slider")
            }, minimumValueLabel: {
                Text("0")
            }, maximumValueLabel: {
                Text("1000")
            })
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
