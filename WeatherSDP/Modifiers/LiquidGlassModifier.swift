//
//  File.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 23/12/25.
//

import Foundation
import SwiftUI

struct LiquidGlassModifier: ViewModifier {
    var cornerRadius: CGFloat = 20
    var verticalPadding: CGFloat = 16
    var horizontalPadding: CGFloat = 26
    var outerPadding: CGFloat = 16
    
    func body(content: Content) -> some View {
        content
            .padding(.vertical, verticalPadding)
            .padding(.horizontal, horizontalPadding)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .fill(.ultraThinMaterial)
                    .shadow(color: .white.opacity(0.25), radius: 10)
                    .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
            )
            .padding(outerPadding)
    }
}

extension View {
    func liquidGlass(
        cornerRadius: CGFloat = 20,
        verticalPadding: CGFloat = 16,
        horizontalPadding: CGFloat = 26,
        outerPadding: CGFloat = 16
    ) -> some View {
        self.modifier(
            LiquidGlassModifier(
                cornerRadius: cornerRadius,
                verticalPadding: verticalPadding,
                horizontalPadding: horizontalPadding,
                outerPadding: outerPadding
            )
        )
    }
}
