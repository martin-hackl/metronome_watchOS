//
//  ContentView.swift
//  Metronome Watch App
//
//  Created by Martin Hackl on 03.04.24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = false
    @State private var BPM = 90
    @State private var startstop = "Start"
    @State private var buttoncolor: Color = .green

    var body: some View {
        VStack {
            Text("BPM:")
                .font(.headline)
            Stepper(value: $BPM, in: 30...200) {
                Text("\(BPM)")
            }
            
            
            
            Button(action: {
                if (isOn == false) {
                    isOn = true;
                    startstop = "Stop"
                    buttoncolor = .red;
                    print(isOn);
                    print(BPM);
                }
                else{
                    isOn = false;
                    startstop = "Start"
                    buttoncolor = .green;
                    print(isOn);
                }
            }, label: {
                Text("\(startstop)")
            })
            .buttonStyle(.borderedProminent)
            .tint(buttoncolor)


        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
