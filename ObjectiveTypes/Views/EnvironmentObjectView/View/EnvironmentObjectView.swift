//
//  EnvironmentObjectView.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 21/01/25.
//

import SwiftUI

struct EnvironmentObjectView: View {
    @EnvironmentObject var randomNum : RandomNumberViewModel
    var body: some View {
        VStack {
            Text("Just Observe: \(randomNum.randomNum)").font(.title)
            Button("Click 1") {
                randomNum.randomNum = (0..<100).randomElement() ?? 12
            }
            
            EnvironmentObjectView2().padding()
        }
    }
}

struct EnvironmentObjectView2 : View {
    @EnvironmentObject var randomNum : RandomNumberViewModel
    
    var body: some View {
        VStack {
            Button("Click 2") {
                randomNum.randomNum = (100..<200).randomElement() ?? 22
            }
            
            EnvironmentObjectView3().padding()
        }
    }
    
}

struct EnvironmentObjectView3 : View {
    @EnvironmentObject var randomNum : RandomNumberViewModel
    var body: some View {
        VStack {
            Button {
                randomNum.randomNum = (200..<300).randomElement() ?? 33
            } label: {
                Text("Click 3")
            }

        }
    }
}

#Preview {
    EnvironmentObjectView().environmentObject(RandomNumberViewModel())
}
