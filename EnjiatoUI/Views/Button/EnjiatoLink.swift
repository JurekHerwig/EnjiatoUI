//
//  EnjiatoLink.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 10.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

public struct EnjiatoLink<Destination>: View where Destination: View {
    var destination: Destination
    var title: String
    var style: EnjiatoButton.Style

    public var body: some View {
        NavigationLink(destination: destination, label: {
            EnjiatoButtonView(title: title, style: style)
        })
    }

    public init(destination: Destination, title: String, style: EnjiatoButton.Style = .primary) {
        self.destination = destination
        self.title = title
        self.style = style
    }
}

struct EnjiatoLink_Previews: PreviewProvider {
    static var previews: some View {
        EnjiatoLink(destination: Text("[Destination]"), title: "[Link]")
    }
}
