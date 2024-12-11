//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 30/10/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("sunsetMoscow")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .cornerRadius(150)
//            .clipShape(Circle())
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
