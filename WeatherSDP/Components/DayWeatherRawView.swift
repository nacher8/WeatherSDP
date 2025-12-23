//
//  DayWeatherRawView.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 23/12/25.
//

import SwiftUI

struct DayWeatherRawView: View {
    let day: String
    let icon: IconWeather
    let temperature: Double
    
    var body: some View {
        HStack {
            Text(day)
            Spacer()
            IconWeatherView(iconWeather: icon)
            ProgressView(value: temperature, total: 50.0)
                .frame(width: 120)
            Text("\(Int(temperature))º")
        }
        .font(.title3)
    }
}

#Preview {
    DayWeatherRawView(day: "Lun", icon: .sunny, temperature: 22)
}
