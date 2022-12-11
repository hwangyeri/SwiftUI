//
//  ContentView.swift
//  Weather
//
//  Created by 황예리 on 2022/11/02.
//

import SwiftUI

struct Weather {
    struct Forecast {
        let hour : String
        let conditions : Image
        let temperature : String
    }
    
    let hourlyForecast = [
        Forecast(hour: "지금", conditions: Image(systemName: "cloud.sun.fill"), temperature: "10°"),
        Forecast(hour: "오후 5시", conditions: Image(systemName: "sun.max.fill"), temperature: "6°"),
        Forecast(hour: "오후 6:10", conditions: Image(systemName: "sunset.fill"), temperature: "일몰"),
        Forecast(hour: "오후 8시", conditions: Image(systemName: "cloud.moon.fill"), temperature: "5°"),
        Forecast(hour: "오후 9시", conditions: Image(systemName: "moon.stars.fill"), temperature: "3°")
    ]
}

struct ContentView: View {
    let weather = Weather()
    
    var body: some View {
        ZStack {
            Image("sky")
                .resizable()
                .ignoresSafeArea(.all)
            VStack(alignment: .leading, spacing: 20.0) {
                Panel()
                Divider()
                HStack {
                    ForEach(weather.hourlyForecast, id: \.hour) { forecast in
                        Spacer()
                        Forecast(date: forecast)
                        Spacer()
                    }
                }
            }
            .padding()
        .background(Color(.lightGray))
        .opacity(0.9)
        
           
        }.frame(height: 800)
    }
}

struct Panel : View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading) {
                Text("서울")
                    .font(.title3)
                Text("10°")
                    .font(.largeTitle)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                HStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                    Text("흐림 ")
                        .padding(0.1)
                }
                Text("최고: 14° 최저: 1°")
            }
        }.foregroundColor(.white)
    }
}

struct Forecast: View {
    let date : Weather.Forecast
    
    var body: some View {
        VStack {
            Text(date.hour)
            
            date.conditions
                .renderingMode(.original)
                .frame(height: 50)
            
            Text(date.temperature)
        }.foregroundColor(.white)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    // .previewLayout(.sizeThatFits) 그 사이즈만 보여주는 코드
