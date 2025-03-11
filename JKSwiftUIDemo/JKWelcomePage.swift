//
//  JKWelcomePage.swift
//  JKSwiftUIDemo
//
//  Created by 鸣人家的mac on 2025/3/11.
//

import SwiftUI

struct JKWelcomePage: View {
    var body: some View {
        
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30).frame(width: 150, height: 150).foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands").font(.system(size: 70)).foregroundStyle(.white)
                
            }
            
            Text("Welcome to Myapp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
//                .border(.black, width: 1.5)
            
            Text("Descrition text")
                .font(.title2)
//                .border(.black, width: 1.5)
        }
//        .border(.orange, width: 1.5)
        .padding()
//        .border(.purple, width: 1.5)
        
    }
}

#Preview {
    JKWelcomePage()
}
