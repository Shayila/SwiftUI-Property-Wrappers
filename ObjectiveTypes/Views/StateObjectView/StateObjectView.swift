//
//  StateObjectView.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 21/01/25.
//

import SwiftUI

struct RandomNumberView2 : View {
    @State var randomNum : Int = 0

    var body: some View {
        VStack {
            Text("Random Number: \(randomNum)")
            Button("Click To Get Random Number!!!") {
                randomNum = (0..<10000).randomElement()!
            }
            
            StateObjectView().padding()
           // ObservableView().padding()
        }
    }
}
struct StateObjectView: View {
    @StateObject var counterVM = CounterViewModel()
    var body: some View {
        VStack {
            Text("Incremented Value: \(counterVM.incrementVal)")
            Button("Click To Increment the Value!!!") {
                counterVM.incrementTheValue()
            }
            
         //   ObservableView2(counterVM: counterVM).padding()
        }
    }
}

//MARK: - Observable vs State Object
//struct ObservableView2 : View {
//    @ObservedObject var counterVM : CounterViewModel
//    var body: some View {
//        VStack {
//            Text("Value from otherView: \(counterVM.incrementVal)")
//        }
//    }
//}

#Preview {
    RandomNumberView2()
}
