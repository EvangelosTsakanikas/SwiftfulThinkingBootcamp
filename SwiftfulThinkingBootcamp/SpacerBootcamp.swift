//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 30/10/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: nil) {
            HStack(spacing: 0, content: {
    //            Spacer(minLength: 0)
    //                .frame(height: 10)
    //                .background(Color.orange)
    //            Rectangle()
    //                .frame(width: 50, height: 50, alignment: .center)
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //            Rectangle()
    //                .fill(Color.red)
    //                .frame(width: 50, height: 50, alignment: .center)
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //            Rectangle()
    //                .fill(Color.green)
    //                .frame(width: 50, height: 50, alignment: .center)
    //            Spacer(minLength: 0)
    //                .frame(height: 10)
    //                .background(Color.orange)
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            })
            .font(.title)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.blue)
            
            Spacer()
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
