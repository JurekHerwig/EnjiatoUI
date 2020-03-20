//
//  EnjiatoCheckbox.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 20.03.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

public struct EnjiatoCheckbox: View {
    let text: String
    let image: UIImage
    var checked: Binding<Bool>

    public var body: some View {
        HStack {
            Image(uiImage: checked.wrappedValue ? UIImage(named: "CheckboxChecked")! : UIImage(named: "Checkbox")!)
            Text(text)
                .lineLimit(0)
            Spacer()
            Image(uiImage: image)
        }.onTapGesture {
            self.checked.wrappedValue.toggle()
        }.padding()
    }

    public init(text: String, image: UIImage, checked: Binding<Bool>) {
        self.text = text
        self.image = image
        self.checked = checked
    }
}

struct EnjiatoCheckbox_Previews: PreviewProvider {
    static var previews: some View {
        EnjiatoCheckbox(text: "[Text]", image: UIImage(), checked: .constant(false))
    }
}
