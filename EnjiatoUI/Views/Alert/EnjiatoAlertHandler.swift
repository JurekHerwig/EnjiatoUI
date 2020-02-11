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
        let host = UIHostingController(rootView: ErrorAlertView(text: error.localizedDescription))

        var config = SwiftMessages.Config()
        config.duration = SwiftMessages.Duration.seconds(seconds: 5)
        config.preferredStatusBarStyle = .lightContent

        let view = MessageView()
        view.layoutMarginAdditions.top = 0
        host.view.frame = view.bounds
        host.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(host.view)

        SwiftMessages.show(config: config, view: host.view)
    }

    public func show(_ text: String) {
        let host = UIHostingController(rootView: HintAlertView(text: text))

        var config = SwiftMessages.Config()
        config.duration = SwiftMessages.Duration.seconds(seconds: 5)
        config.preferredStatusBarStyle = .lightContent

        let view = MessageView()
        view.layoutMarginAdditions.top = 0
        host.view.frame = view.bounds
        host.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(host.view)

        SwiftMessages.show(config: config, view: host.view)
    }

    public func hideAlert() {
        SwiftMessages.hide()
    }
}
