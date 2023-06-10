//
//  CircleView.swift
//  TrafficLightSUI
//
//  Created by Zaki on 09.06.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    var body: some View {
            Circle()
                .foregroundColor(color)
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

