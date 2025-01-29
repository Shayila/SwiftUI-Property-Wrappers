//
//  WeatherView.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 15/01/25.
//

import SwiftUI

struct RandomNumberView : View {
    @State var btnClick = 0
    var body: some View {
        VStack {
            Text("Random Value: \(btnClick)")
                .font(.title)
            Button {
                btnClick = (0..<10000).randomElement()!
            } label: {
                Text("Click To get random value!!!")
            }
            
            ObservableView()
                .padding()

        }
    }
}
struct ObservableView: View {
    
    @ObservedObject var counterVM = CounterViewModel()
    
    var body: some View {
      
        VStack {
            Text("Incremented Value: \(counterVM.incrementVal)").font(.title)
            Button(action: counterVM.incrementTheValue, label: {
                Text("Click To Increment")
            })
        }
        
    }
}

#Preview {
    RandomNumberView()
}
