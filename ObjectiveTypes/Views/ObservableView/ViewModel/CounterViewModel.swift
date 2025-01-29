//
//  CounterViewModel.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 21/01/25.
//

import Foundation

class CounterViewModel : ObservableObject {
    @Published var incrementVal : Int = 0
    
    func incrementTheValue(){
        incrementVal += 1
    }
}
