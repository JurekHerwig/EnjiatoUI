//
//  EnjiatoTextField.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 07.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

public struct EnjiatoTextFieldStyle: TextFieldStyle {
    let style: Style

    public func _body(configuration: TextField<Self._Label>) -> some View {
        Group {
            if style == .outlined {
                configuration
                    .padding(.horizontal, 16)
                    .padding(.vertical, 17)
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(8)
                    .padding(.horizontal)
            } else {
                VStack {
                    configuration
                    Rectangle()
                        .fill(Color(UIColor.systemGray5))
                        .frame(height: 1)
                }.padding(.horizontal)
            }
        }
    }

    public init(_ style: Style) {
        self.style = style
    }
}

extension EnjiatoTextFieldStyle {
    public enum Style {
        case outlined
        case simple
    }
}

struct EnjiatoTextFieldStyle_Previews: PreviewProvider {
    static var previews: some View {
        TextField("[TextField]", text: .constant(""))
            .textFieldStyle(EnjiatoTextFieldStyle(.simple))
    }
}
