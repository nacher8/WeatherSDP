//
//  IconWeatherEnum.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 23/12/25.
//

import Foundation
import SwiftUI

enum IconWeather {
    case sunny
    case sunnyCloud
    case cloudy
    case rainy
    case stormy
    case snowy
    
    var systemName: String {
        switch self {
        case .sunny:
            return "sun.max.fill"
        case .sunnyCloud:
            return "cloud.sun.fill"
        case .cloudy:
            return "cloud.fill"
        case .rainy:
            return "cloud.rain.fill"
        case .stormy:
            return "cloud.bolt.fill"
        case .snowy:
            return "cloud.snow.fill"
        }
    }
    
    var colors: [Color] {
        switch self {
        case .sunny:
            return [.yellow]
        case .sunnyCloud:
            return [.white, .yellow]
        case .rainy:
            return [.gray, .blue]
        case .stormy:
            return [.gray.opacity(0.8), .yellow]
        case .cloudy:
            return [.gray.opacity(0.8)]
        case .snowy:
            return [.white]
        }
    }
}
