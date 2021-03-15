//
//  CircledView.swift
//  WeekFM
//
//  Created by Оля on 02.03.2021.
//

import SwiftUI
struct CircledView: View {
    @State private var progress: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.2)
                .foregroundColor(Color.purple)
            
            Text(String(format: "%.0f%%", min(self.progress, 1) * 100))
                .font(.system(size: 50))
            
            Circle()
                .trim(from: 0.0, to: CGFloat(self.progress))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.purple)
                .animation(Animation.linear(duration: 2.0))
        }
        
    }
}

