//
//  ContentView.swift
//  NewWeather
//
//  Created by 황예리 on 2022/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Panel()
            Divider()
            Forecast()
        }
        .padding()
        .background(Color.gray)
        .opacity(0.8)
    }
}

struct Panel: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Seoul")
                Text("10°")
            }
            .font(.title)
            Spacer()
            
            VStack(alignment: .trailing){
                HStack {
                    Image(systemName: "cloud.fill")
                        .renderingMode(.original)
                    Text("cloudy")
                }
                
                HStack {
                    Text("highest: 14°")
                    Text("lovwest: 8°")
                }
            }
        }.foregroundColor(.black)
    }
}

struct Forecast: View {
    var body: some View {
        HStack {
            VStack {
                Text("Now")
                Image(systemName: "sun.max.fill")
                    .renderingMode(.original)
                    .frame(height: 50)
                Text("12°")
            }
            Spacer()
            
            VStack {
                Text("15:00")
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .frame(height: 50)
                Text("15°")
            }
            Spacer()
            
            VStack {
                Text("18:00")
                Image(systemName: "sunset.fill")
                    .renderingMode(.original)
                    .frame(height: 50)
                Text("12°")
            }
            Spacer()
            
            VStack {
                Text("20:00")
                Image(systemName: "cloud.moon.fill")
                    .renderingMode(.original)
                    .frame(height: 50)
                Text("10°")
            }
            Spacer()
            
            VStack {
                Text("22:00")
                Image(systemName: "moon.stars.fill")
                    .renderingMode(.original)
                    .frame(height: 50)
                Text("8°")
            }
        }
        .foregroundColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
