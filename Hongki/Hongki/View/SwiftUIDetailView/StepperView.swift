//
//  StepperView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/04.
//

import SwiftUI

struct StepperView: View {
    @State private var stepperValue: Int = 0
    @State private var limitedValue: Int = 0
    
    var body: some View {
        Stepper(value: $stepperValue, label: {
            Text("stepper Value : \(stepperValue)")
        })
        
        Divider()
        
        Stepper(value: $limitedValue, in: 0...5, label: {
            Text("limited stepper Value(0-5) \n\(limitedValue)")
        })
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
