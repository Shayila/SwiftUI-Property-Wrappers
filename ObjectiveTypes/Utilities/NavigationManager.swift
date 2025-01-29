//
//  NavigationManager.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 10/01/25.
//

import Foundation
import SwiftUI

class NavigationManager : ObservableObject {
    @Published var path = NavigationPath()
    
    func pushView <V>(_viewType : V.Type)where V: View {
        path.append(String(describing: V.self))
    }
    
    func popToRoot(){
        path.removeLast(path.count)
    }
}
