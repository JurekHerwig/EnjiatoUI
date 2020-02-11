//
//  ErrorAlertView.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 11.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

struct ErrorAlertView: View {
    var text: String

    var body: some View {
        HStack {
            Image(systemName: "exclamationmark.triangle")
            Text(text)
        }.background(Color(UIColor.systemRed))
    }
}

struct ErrorAlertView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorAlertView(text: "[Error]")
    }
}
