//
//  ContentView.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 10/01/25.
//

enum PageTypes : Int{
    case State_Ex = 0
    case StateObject_Ex
    case Binding_Ex
    case ObservableObject_Ex
    case EnvironmentalObject_Ex
}

import SwiftUI

struct ContentView: View {
    var listArray = ["State","State Object","Binding","Observable Object","Environmental Object"]
    
    @State var slider : CGFloat = 2
    @State var isEditing = false
    
    @StateObject private var coordinator = NavigationManager()
    var body: some View {
        
        let columns : [GridItem] = Array(repeating: .init(.flexible()), count: Int(slider))
        
        
        return NavigationStack(path: $coordinator.path) {
            
            VStack {
               
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach (Array(listArray.enumerated()), id: \.offset) { index,item in
                                
                                
                                VStack{
                                    Image(systemName: "paintpalette.fill")
                                        .padding(8)
                                            .foregroundColor(.pink)
                                            
                                            .background(.pink.opacity(0.2))
                                            .clipShape(.circle)
                                    Text("\(index + 1)").fontWeight(.light).foregroundStyle(.gray)
                                    Text(item).fontWeight(.semibold).foregroundStyle(.gray)
                                    
                                }
                                .onTapGesture(perform: {
                                    userBtnClickAction(index: index)
                                })

                            .frame(width: 120,height: 120)
                            .padding()
                            .background(.white)
                            
                            .cornerRadius(10)
                            
                        }
                    }
                }
                
            }
            .background(LinearGradient(colors: [.blue.opacity(0.5),.cyan,.teal.opacity(0.6)], startPoint: .top, endPoint: .bottom))
            .navigationTitle("Home")
            
            .navigationDestination(for: String.self) { item in
                switch item {
                case String(describing: StateView.self):
                    StateView()
                case String(describing: ParentBingView.self):
                    ParentBingView()
                case String(describing: RandomNumberView.self):
                    RandomNumberView()
                case String(describing: RandomNumberView2.self):
                    RandomNumberView2()
                case String(describing: EnvironmentObjectView.self):
                    EnvironmentObjectView()
                default:
                    EmptyView()
                }
//                if item == String(describing: StateView.self){
//                    StateView()
//                }
                    
            }
        }
        .environmentObject(coordinator)
        
    }
    
    
    func userBtnClickAction(index : Int) {
        if let page = PageTypes(rawValue: index) {
            switch page {
            case .State_Ex:
                coordinator.pushView(_viewType: StateView.self)
                break
                
            case .StateObject_Ex:
                coordinator.pushView(_viewType: RandomNumberView2.self)
                break
                
                
            case .Binding_Ex:
                coordinator.pushView(_viewType: ParentBingView.self)
                break
            case .ObservableObject_Ex:
                coordinator.pushView(_viewType: RandomNumberView.self)
                break
            case .EnvironmentalObject_Ex:
                coordinator.pushView(_viewType: EnvironmentObjectView.self)
                break
            }
        }
    }
}

#Preview {
    ContentView()
}
