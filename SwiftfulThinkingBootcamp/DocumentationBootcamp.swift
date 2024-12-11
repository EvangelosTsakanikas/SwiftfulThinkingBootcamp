//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 2/11/24.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = ["apples", "oranges", "bananas"]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // Evan - Working copy - things to do
    /*
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red
                    .ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation Bootcamp")
                .navigationBarItems(
                    trailing: Button("Alert", action: {
                        showAlert.toggle()
                    })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the Alert!")
            }
            }
        } // END: NAV
    }
    
    // MARK: FUNCTIONS
    
    /// This is the foreground layer that holds a scroll view
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    
    /// Gets an alert with a specified title
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter, but it will not have a message
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    /// - Warning: There is not additional message in this Alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}


// MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
