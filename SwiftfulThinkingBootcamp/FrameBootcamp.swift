//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 30/10/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!" )
//            .background(Color.green)
////            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//            .background(Color.red)
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
            
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
