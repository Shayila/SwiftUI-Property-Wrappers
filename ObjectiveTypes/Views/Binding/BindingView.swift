//
//  BindingView.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 10/01/25.
//

import SwiftUI

/*Image Slider with Button Actions in child view and image in parent view*/
struct BindingView: View {
    @Binding var currentPage : Int
    var body: some View {
        HStack {
           // Button
           
            
            Button {
                
                currentPage = currentPage - 1
            }label: {
                HStack{
                    Image(systemName: "arrowshape.backward.circle.fill")
                    Text("Back")
                }
                .foregroundColor(.black)
                
                
            }
            
            Spacer()
            
            Button {
                currentPage = currentPage + 1
            }label: {
                HStack{
                    Text("Next")
                    Image(systemName: "arrowshape.forward.circle.fill")
                    
                }
                .foregroundColor(.black)
                
                
            }
           
            
        
            
        }
        .padding()
    }
}

struct ParentBingView : View {
    @State private var imageArray = ["BgView1","BgView2","BgView3","BgView4","BgView5","BgView6"]
    @State private var currentPage = 0

    var body: some View {
        
        return VStack {
            Text("Trips").fontWeight(.heavy)
                .font(.title)
                .frame(alignment: .leading)
                .foregroundColor(.black
                )
            TabView(selection: $currentPage,
                    content:  {
                ForEach(0..<imageArray.count,id: \.self) { item in
                    
                        Image(imageArray[item])
                            .resizable()
                            //.frame(width: .infinity,height: UIScreen.getScreenHeight()/2.5)
                            //.padding()
                            //.scaledToFit()
                            .cornerRadius(20)
                    
                    
                }
            })
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .frame(height: UIScreen.getScreenHeight() - 350)
            .padding()
            //.background(.black.opacity(0.4))
            
            BindingView(currentPage: $currentPage)
                                                                           
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(LinearGradient(colors: [.blue.opacity(0.5),.cyan,.teal.opacity(0.6)], startPoint: .top, endPoint: .bottom))
        
    }
}
#Preview {
   ParentBingView()
}
