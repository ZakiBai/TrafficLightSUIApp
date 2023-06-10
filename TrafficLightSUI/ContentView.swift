//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Zaki on 09.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var buttonText = "START"
        
    
    @State private var redIsOn = false
    @State private var yellowIsOn = false
    @State private var greenIsOn = false
    
    private var lightIsOff = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20) {
                CircleView(color: redIsOn ? .red : .red.opacity(lightIsOff))
                CircleView(color: yellowIsOn ? .yellow : .yellow.opacity(lightIsOff))
                CircleView(color: greenIsOn ? .green : .green.opacity(lightIsOff))
                Spacer()
                
                Button(action: {
                    
                    if buttonText == "START" {
                        buttonText = "NEXT"
                    }
                    
                    switch currentLight {
                    case .red:
                        greenIsOn = false
                        redIsOn = true
                        currentLight = .yellow
                    case .yellow:
                        redIsOn = false
                        yellowIsOn = true
                        currentLight = .green
                    default:
                        yellowIsOn = false
                        greenIsOn = true
                        currentLight = .red
                    }
                    
                } ) {
                    Text(buttonText)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 8, leading: 42, bottom: 8, trailing: 42))
                        .overlay {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 7)
                        }
                }
                .background(Color.blue)
                .cornerRadius(15)
                
            }
            .padding()
        }
    }
}

enum CurrentLight {
    case red, yellow, green
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
