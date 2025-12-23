//
//  HourWeatherRawView.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 23/12/25.
//

import SwiftUI

struct HourWeatherRawView: View {
    let hour: Int
    let icon: IconWeather
    let temp: String
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(hour)")
            IconWeatherView(iconWeather: icon)
            Text(temp)
        }
        .font(.title3)
    }
}

#Preview {
    HourWeatherRawView(hour: 21, icon: .rainy, temp: "18º")
}
