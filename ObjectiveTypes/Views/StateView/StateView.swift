//
//  StateView.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 10/01/25.
//

import SwiftUI

struct StateView: View {
    @State private var slider : CGFloat = 1
    
    @EnvironmentObject var coordinator : NavigationManager
    var body: some View {
        
        VStack{
            
            Slider(value: $slider, in: 0...10,step: 1) {
                Text("Slider")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("20")
            }
            .padding()
           Text("Slider Value: \(Int(slider))")
            
            .navigationTitle("State Example")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: dismissFunc, label: {
                        Text("Cancel")
                    })
                }
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(LinearGradient(colors: [.blue.opacity(0.5),.cyan,.teal], startPoint: .top, endPoint: .bottom))
    }
    
    
    func dismissFunc(){
        coordinator.popToRoot()
    }
}

#Preview {
    StateView()
}
