//
//  JKFeaturesPage.swift
//  JKSwiftUIDemo
//
//  Created by 鸣人家的mac on 2025/3/11.
//

import SwiftUI

struct JKFeaturesPage: View {
    var body: some View {
        VStack (spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            JKFeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
            JKFeatureCard(iconName: "quote.bubble.fill", description: "Short summary")

            Spacer()
        }
        .padding()
    }
}

#Preview {
    if #available(iOS 16.0, *) {
        JKFeaturesPage()
            .frame(maxHeight: .infinity)
            .background(Gradient(colors: gradientColots))
            .foregroundStyle(.white)
    } else {
        // Fallback on earlier versions
    }
}
