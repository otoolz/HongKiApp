//
//  PickerView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/04.
//

import SwiftUI

struct PickerView: View {
    @State private var menuString: String = "Pick1"
    var body: some View {
        VStack {
            Menu(content: {
                Picker(selection: $menuString, label: Text("pickString")) {
                    ForEach(["Pick1", "Pick2", "Pick3"], id: \.self) { item in
                        Text(item)
                    }
                }
            }, label: {
                Text(menuString)
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
