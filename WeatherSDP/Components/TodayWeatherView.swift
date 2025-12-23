//
//  TodayWeatherView.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 23/12/25.
//

import SwiftUI

struct TodayWeatherView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("22º")
                    .font(.system(size: 100, weight: .medium))
                Spacer()
                Text("🌤️")
                    .font(.system(size: 100))
                
            }
            Text("Parcialmente nublado")
                .font(.title3)
                .fontWeight(.medium)
            HStack() {
                Text("Máx 28º")
                Circle()
                    .frame(width: 2, height: 2)
                Text("Min 18º")
            }
            .font(.title3)
            .foregroundStyle(.secondary)
        }
        .liquidGlass()
    }
}

#Preview {
    TodayWeatherView()
}
