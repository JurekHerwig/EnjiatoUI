//
//  LottieView.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 05.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    private let animationView = AnimationView()

    var filename: String

    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        animationView.animation = Animation.named(filename)
        animationView.loopMode = .loop
        animationView.play()

        return animationView
    }

    func updateUIView(_ view: UIView, context: UIViewRepresentableContext<LottieView>) { }
}
