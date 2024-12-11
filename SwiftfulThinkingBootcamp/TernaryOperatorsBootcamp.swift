//
//  TernaryOperatorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 31/10/24.
//

import SwiftUI

struct TernaryOperatorsBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: 200, height: 100)
            
            Spacer()
        }
    }
}

struct TernaryOperatorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorsBootcamp()
    }
}
