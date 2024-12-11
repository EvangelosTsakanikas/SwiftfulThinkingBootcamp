//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 1/11/24.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "online" : " offline")
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change status")
                }
            )
            .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            Spacer()
        }
        .padding(.horizontal, 100)
        
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
