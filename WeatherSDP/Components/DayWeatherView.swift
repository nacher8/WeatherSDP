//
//  DayWeatherView.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 23/12/25.
//

import SwiftUI

struct DayWeatherView: View {
    var body: some View {
        VStack {
            DayWeatherRawView(day: "Lun", icon: .cloudy, temperature: 22)
            DayWeatherRawView(day: "Mar", icon: .sunny, temperature: 20)
            DayWeatherRawView(day: "Mie", icon: .cloudy, temperature: 19)
            DayWeatherRawView(day: "Jue", icon: .rainy, temperature: 22)
            DayWeatherRawView(day: "Vie", icon: .cloudy, temperature: 18)
        }
        .liquidGlass()
    }
}

#Preview {
    DayWeatherView()
}
