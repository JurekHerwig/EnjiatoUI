//
//  EnjiatoAlertHandler.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 11.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftMessages
import SwiftUI

public class EnjiatoAlertHandler {
    public init() { }

    public func show(_ error: Error) {
    //        let error = error as? FuelcastError ?? FuelcastError.fallback

        let host = UIHostingController(rootView: ErrorAlertView(text: "Text"))
        var config = SwiftMessages.Config()
        config.duration = SwiftMessages.Duration.automatic
        SwiftMessages.show(config: config, view: host.view)
    }

    public func show(_ text: String) {
    //        let error = error as? FuelcastError ?? FuelcastError.fallback

        let host = UIHostingController(rootView: HintAlertView(text: text))
        var config = SwiftMessages.Config()
        config.duration = SwiftMessages.Duration.automatic
        SwiftMessages.show(config: config, view: host.view)
    }

    public func hideAlert() {
        SwiftMessages.hide()
    }
}
