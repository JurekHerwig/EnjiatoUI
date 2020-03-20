//
//  EnjiatoRadio.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 20.03.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

public struct EnjiatoRadio: View {
    let text: String
    var checked: Binding<Bool>

    public var body: some View {
        HStack {
            Image(uiImage: checked.wrappedValue ? UIImage(named: "RadioChecked")! : UIImage(named: "Checkbox")!)
            Text(text)
            Spacer()
        }.onTapGesture {
            self.checked.wrappedValue.toggle()
        }.padding()
    }

    public init(text: String, checked: Binding<Bool>) {
        self.text = text
        self.checked = checked
    }
}

struct EnjiatoRadio_Previews: PreviewProvider {
    static var previews: some View {
        EnjiatoRadio(text: "[Text]", checked: .constant(false))
    }
}
