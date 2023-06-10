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
                .frame(width: 120, height: 120)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

