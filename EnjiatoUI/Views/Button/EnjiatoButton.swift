//
//  EnjiatoButton.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 05.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

public struct EnjiatoButton: View {
    var action: (() -> Void)
    var title: String
    var style: EnjiatoButton.Style
    var isDisabled: Binding<Bool>
    var isLoading: Binding<Bool>

    public var body: some View {
        Button(action: action, label: {
            EnjiatoButtonView(title: title, style: style, isLoading: isLoading)
        }).disabled(isDisabled.wrappedValue)
    }

    public init(
        action: @escaping (() -> Void),
        title: String,
        style: EnjiatoButton.Style = .primary,
        isDisabled: Binding<Bool> = .constant(false),
        isLoading: Binding<Bool> = .constant(false)
    ) {
        self.action = action
        self.title = title
        self.style = style
        self.isDisabled = isDisabled
        self.isLoading = isLoading
    }
}

extension EnjiatoButton {
    public enum Style {
        case primary
        case secondary
        case inline
    }
}

struct EnjiatoButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            EnjiatoButton(action: {}, title: "[Button]", style: .primary, isLoading: .constant(true))
            EnjiatoButton(action: {}, title: "[Button]", style: .secondary, isLoading: .constant(true))
            EnjiatoButton(action: {}, title: "[Button]", style: .inline, isLoading: .constant(true))
        }
    }
}
