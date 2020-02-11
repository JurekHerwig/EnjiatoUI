//
//  EnjiatoButtonView.swift
//  EnjiatoUI
//
//  Created by Jurek Herwig on 11.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import Lottie
import SwiftUI

struct EnjiatoButtonView: View {
    var title: String
    var style: EnjiatoButton.Style
    var isLoading: Binding<Bool> = .constant(false)

    var body: some View {
        switch style {
        case .primary:
            return AnyView(primary)
        case .secondary:
            return AnyView(secondary)
        case .inline:
            return AnyView(inline)
        }
    }

    private var primary: some View {
        HStack {
            Spacer()
            if isLoading.wrappedValue {
                LottieView(filename: Asset.loadingWhite.name)
            } else {
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.system(size: 16, weight: .bold))
            }
            Spacer()
        }.padding()
            .frame(height: 55)
            .background(Color(Asset.primary.color))
            .cornerRadius(8)
    }

    private var secondary: some View {
        HStack {
            Spacer()
            if isLoading.wrappedValue {
                LottieView(filename: Asset.loadingPrimary.name)
            } else {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color(Asset.primary.color))
            }
            Spacer()
        }.padding()
            .frame(height: 50)
            .background(Color.clear)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(UIColor.systemGray5), lineWidth: 1)
            )
    }

    private var inline: some View {
        Group {
            if isLoading.wrappedValue {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                    .hidden()
                    .overlay(LottieView(filename: Asset.loadingPrimary.name))
            } else {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
            }
        }
    }
}

struct EnjiatoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            EnjiatoButtonView(title: "[Button]", style: .primary, isLoading: .constant(true))
            EnjiatoButtonView(title: "[Button]", style: .secondary, isLoading: .constant(true))
            EnjiatoButtonView(title: "[Button]", style: .inline, isLoading: .constant(true))
        }
    }
}
