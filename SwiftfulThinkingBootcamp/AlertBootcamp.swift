//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Νικόλαος Τσακανίκας on 1/11/24.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var isPresented: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    isPresented.toggle()
                }
                Button("Button 2") {
                    alertType = .success
                    isPresented.toggle()
                }
            }
            .alert(isPresented: $isPresented) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case.error:
            return Alert(title: Text("There was an error"))
        case.success:
            return Alert(
                title: Text("This was a success"),
                message: nil,
                dismissButton: .default(Text("Ok"), action: {
                    backgroundColor = Color.green
                })
            )
        default:
            return Alert(title: Text("ERROR"))
        }
        
        //        return Alert(
        //            title: Text(alertTitle),
        //            message: Text(alertMessage),
        //            dismissButton: .default(Text("OK"))
        //        )
        
        //        Alert(title: Text("There was an error"))
        //        Alert(
        //            title: Text("This is the title"),
        //            message: Text("Here we will describe the error"),
        //            primaryButton: .destructive(Text("Delete"), action: {
        //                backgroundColor = Color.green
        //            }),
        //            secondaryButton: .cancel()
        //        )
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
