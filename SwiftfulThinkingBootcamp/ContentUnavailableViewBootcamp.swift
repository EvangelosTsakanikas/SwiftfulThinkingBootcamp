//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/7/24.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
//        ContentUnavailableView(
//            "No internet connection",
//            systemImage: "wifi.slash",
//            description: Text("Please connect to the internet and try again")
//        )
        ContentUnavailableView.search(text: "There are no search results...")
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
