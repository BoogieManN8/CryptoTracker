//
//  LaunchView.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 06.05.22.
//

import SwiftUI

struct LaunchView: View {
    
    @State private var loadingText: [String] = "Loading Your portfolio...".map{ String($0) }
    @State private var rotateLogo: Bool = false
    @State private var showLoadingText: Bool = false
    @State private var counter: Int = 0
    @State private var loops: Int = 0
    @Binding var showLaunchView: Bool
    
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            Color.launch.background
                .ignoresSafeArea()
            
            Image("logo-transparent")
                .resizable()
                .frame(width: 100 , height: 100)
                .rotationEffect(Angle(degrees: rotateLogo ? 0: 180))
                
            
            ZStack{
                if showLoadingText {
//                    Text(loadingText)
//                        .font(.headline)
//                        .foregroundColor(Color.launch.accent)
//                        .fontWeight(.heavy)
//                        .transition(AnyTransition.scale.animation(.easeIn))
                    
                    HStack(spacing: 0){
                        ForEach(loadingText.indices){ index in
                            Text(loadingText[index])
                                .font(.headline)
                                .foregroundColor(Color.launch.accent)
                                .fontWeight(.heavy)
                                .offset( y: counter == index ? -5 : 0)
                        }
                    }
                    .transition(AnyTransition.scale.animation(.easeIn))
                    
                }
                
            }
            .offset(y: 70)
            
        }
        .onAppear{
            showLoadingText.toggle()
            withAnimation(.easeInOut(duration: 0.5)){
                rotateLogo = true
            }
        }
        .onReceive(timer) { _ in
            withAnimation(.spring()){
                let lastIndex = loadingText.count - 1
                if counter == lastIndex {
                    counter = 0
                    loops += 1
                    
                    if loops >= 2 {
                        showLaunchView = false
                    }
                    
                } else {
                    
                    counter += 1
                }
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunchView: .constant(true))
    }
}
