//
//  ContentView.swift
//  WeatherSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selected: Int = 0
    let options = ["Hoy", "24 h", "10 días"]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue.opacity(0.3), .blue], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: -2) {
                    Text("Tiempo")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                        
                    Text("Madrid")
                        .font(.system(size: 50))
                        .bold()
                    
                    Picker("", selection: $selected) {
                        ForEach(0..<options.count, id: \.self) { index in
                            Text(options[index])
                        }
                    }
                    .pickerStyle(.segmented)
                    .frame(width: 200)
                    .padding()
                    
                    TodayWeatherView()
                    
                    HourWeatherView()
                    
                    DayWeatherView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
