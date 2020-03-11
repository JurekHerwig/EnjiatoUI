//
//  EnjiatoTextField.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 07.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

public struct EnjiatoTextFieldStyle: TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.horizontal, 16)
            .padding(.vertical, 17)
            .background(Color(UIColor.systemGray5))
            .cornerRadius(8)
    }

    public init() { }
}

struct EnjiatoTextFieldStyle_Previews: PreviewProvider {
    static var previews: some View {
        TextField("[TextField]", text: .constant(""))
            .textFieldStyle(EnjiatoTextFieldStyle())
    }
}
