//
//  DatePickerView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/04.
//

import SwiftUI

struct DatePickerView: View {
    let today = Date.now
    @State private var pickedDate = Date.now
    var body: some View {
        VStack {
            Text("Today : \(today.formatted(date: .complete, time: .omitted))")
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Your Pick : \(pickedDate.formatted(date: .complete, time: .omitted))")
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            Text("DatePicker Style")
                .frame(maxWidth: .infinity, alignment: .leading)
            
            DatePicker(".compact", selection: $pickedDate, displayedComponents: .date)
                .datePickerStyle(.compact)
            
            Divider()
            
            Text(".wheel")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 20)
            DatePicker(".wheel", selection: $pickedDate, displayedComponents: .date)
                .datePickerStyle(.wheel)
        }
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
