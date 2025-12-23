//
//  IconWeatherView.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 23/12/25.
//

import SwiftUI

struct IconWeatherView: View {
    let iconWeather: IconWeather
    
    var body: some View {
        Group {
            switch iconWeather.colors.count {
            case 1:
                Image(systemName: iconWeather.systemName)
                    .foregroundStyle(iconWeather.colors[0])
            case 2:
                Image(systemName: iconWeather.systemName)
                    .foregroundStyle(iconWeather.colors[0], iconWeather.colors[1])
            default:
                Image(systemName: iconWeather.systemName)
            }
        }
        .font(.system(size: 20))
        .frame(width: 20, height: 20)
    }
}

#Preview {
    IconWeatherView(iconWeather: .sunny)
}
