//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 2/11/24.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            Text("TAP Gesture")
                .font(.title)
                .foregroundColor(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
            //                .onTapGesture {
            //                    isSelected.toggle()
            //                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
