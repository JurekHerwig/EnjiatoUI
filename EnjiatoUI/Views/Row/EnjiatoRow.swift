//
//  EnjiatoRow.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 12.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

public struct EnjiatoRow: View {
    var label: String
    var value: String
    var icon: String

    public var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(EnjiatoFont.subTitle)
            Text(label)
                .font(EnjiatoFont.regular)
                .lineLimit(1)
            Spacer()
            Text(value)
                .font(EnjiatoFont.regularBold)
                .lineLimit(1)
        }.padding()
    }

    public init(label: String, value: String, icon: String) {
        self.label = label
        self.value = value
        self.icon = icon
    }
}

struct EnjiatoRow_Previews: PreviewProvider {
    static var previews: some View {
        EnjiatoRow(label: "[Label]", value: "[Value]", icon: "[Icon]")
    }
}
