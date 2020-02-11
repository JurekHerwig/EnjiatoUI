//
//  HintAlertView.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 11.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

struct HintAlertView: View {
    var text: String

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer().frame(height: geometry.safeAreaInsets.top)
                HStack(spacing: 16) {
                    Image(systemName: "exclamationmark.triangle")
                        .foregroundColor(Color.white)
                    Text(self.text)
                        .foregroundColor(Color.white)
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }.padding()
            }.background(Color(UIColor.systemGray2))
        }
    }
}

struct HintAlertView_Previews: PreviewProvider {
    static var previews: some View {
        HintAlertView(text: "[Hint]")
    }
}
