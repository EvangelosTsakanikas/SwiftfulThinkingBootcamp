//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 1/11/24.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = Color.red
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                String(format: "%.2f", sliderValue)
//                "\(sliderValue)"
            )
            .foregroundColor(color)
            
            Slider(value: $sliderValue)
                .accentColor(Color.green)
            Slider(value: $sliderValue, in: 1...5)
            Slider(value: $sliderValue, in: 1...5, step: 1)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1,
                label: {Text("slider")},
                minimumValueLabel: {
                    Text("1")
                        .font(.largeTitle)
                },
                maximumValueLabel: {
                    Text("5")
                        .font(.largeTitle)
                },
                onEditingChanged: { (_) in
                    color = Color.green
                })
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
