//
//  ContentView.swift
//  JKSwiftUIDemo
//
//  Created by 鸣人家的mac on 2025/3/6.
//

import SwiftUI

let gradientColots:[Color] = [
    .gradientTop,
    .gradientBottom
]


struct ContentView: View {
    var body: some View {
        HStack {

            if #available(iOS 16.0, *) {
                TabView {
                    JKWelcomePage()
                    JKFeaturesPage()
                }
                .background(Gradient(colors: gradientColots))
                .tabViewStyle(.page)
                .foregroundStyle(.white)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

#Preview {
    ContentView()
}


//            ExtractedView(day: "Mon", isRain: true, high: 80, low: 70)
//            ExtractedView(day: "Tue", isRain: false, high: 100, low: 60)
struct ExtractedView: View {
    let day:String
    let isRain:Bool
    let high:Int
    let low:Int
    var iconName:String {
        if isRain {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor:Color {
        if isRain {
            return Color.blue
        }
        return Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day).font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)").fontWeight(Font.Weight.semibold)
            Text("Low: \(low)").fontWeight(Font.Weight.medium).foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
