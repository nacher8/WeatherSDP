//
//  HourWeatherView.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 23/12/25.
//

import SwiftUI

struct HourWeatherView: View {
    var body: some View {
        HStack(spacing: 18) {
            HourWeatherRawView(hour: 21, icon: .cloudy, temp: "18º")
            HourWeatherRawView(hour: 22, icon: .cloudy, temp: "18º")
            HourWeatherRawView(hour: 23, icon: .rainy, temp: "18º")
            HourWeatherRawView(hour: 24, icon: .stormy, temp: "18º")
            HourWeatherRawView(hour: 1, icon: .cloudy, temp: "18º")
            HourWeatherRawView(hour: 2, icon: .sunnyCloud, temp: "18º")
            HourWeatherRawView(hour: 3, icon: .sunny, temp: "18º")
        }
        .liquidGlass()
    }
}

#Preview {
    HourWeatherView()
}
