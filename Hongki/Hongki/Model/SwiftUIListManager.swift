//
//  SwiftUIListManager.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI

enum SwiftUI: CaseIterable {
    case button
    case picker
    case colorPicker
    case datePicker
    case slider
    case stepper
    case navigationLink
    case link
     
    var iconName: String {
        switch self {
        case .button : return "rectangle.and.hand.point.up.left.filled"
        case .picker : return "checkmark.circle"
        case .datePicker : return "calendar.day.timeline.left"
        case .colorPicker : return "paintpalette"
        case .slider : return "slider.horizontal.3"
        case .stepper : return "figure.walk"
        case .navigationLink : return "app.connected.to.app.below.fill"
        case .link : return "link"
        }
       
    }
    
    var title: String {
        switch self {
        case .button : return "Button"
        case .picker : return "Picker"
        case .datePicker : return "Date Picker"
        case .colorPicker : return "Color Picker"
        case .slider : return "Slider"
        case .stepper : return "Stepper"
        case .navigationLink : return "Navigation Link"
        case .link : return "Link"
        }
    }
    
    var description: String {
        switch self {
        case .button : return "push the Button"
        case .picker : return "Picker's Pick"
        case .datePicker : return "What is date today?"
        case .colorPicker : return "pick your Color"
        case .slider : return "drag the slider"
        case .stepper : return "one step, two step"
        case .navigationLink : return "navigationLink to destination"
        case .link : return "link to web"
        }
    }
    
    var docURL: String {
        switch self {
        case .button : return "https://developer.apple.com/documentation/swiftui/button"
        case .picker : return "https://developer.apple.com/documentation/swiftui/picker"
        case .datePicker : return "https://developer.apple.com/documentation/swiftui/datepicker"
        case .colorPicker : return "https://developer.apple.com/documentation/swiftui/colorpicker"
        case .slider : return "https://developer.apple.com/documentation/swiftui/slider"
        case .stepper : return "https://developer.apple.com/documentation/swiftui/stepper"
        case .navigationLink : return "https://developer.apple.com/documentation/swiftui/navigationlink"
        case .link : return "https://developer.apple.com/documentation/swiftui/link"
        }
       
    }
    
    var higURL: String {
        switch self {
        case .button : return "https://developer.apple.com/design/human-interface-guidelines/ios/controls/buttons"
        case .picker : return "https://developer.apple.com/design/human-interface-guidelines/ios/controls/pickers"
        case .datePicker : return "https://developer.apple.com/design/human-interface-guidelines/ios/controls/pickers"
        case .colorPicker : return "https://developer.apple.com/design/human-interface-guidelines/ios/controls/color-wells"
        case .slider : return "https://developer.apple.com/design/human-interface-guidelines/ios/controls/sliders"
        case .stepper : return "https://developer.apple.com/design/human-interface-guidelines/ios/controls/steppers"
        case .navigationLink : return "https://developer.apple.com/design/human-interface-guidelines/ios/bars/navigation-bars"
        case .link : return "https://developer.apple.com/design/human-interface-guidelines/ios/views/web-views"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .button : ButtonView()
        case .picker : PickerView()
        case .datePicker : DatePickerView()
        case .colorPicker : ColorPickerView()
        case .slider : SliderView()
        case .stepper : StepperView()
        case .navigationLink : NavigationLinkView()
        case .link : LinkView()
        }
    }
}
