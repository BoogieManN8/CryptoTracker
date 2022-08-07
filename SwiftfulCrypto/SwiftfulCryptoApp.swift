//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 27.04.22.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    @StateObject private var vm = HomeViewModel()
    @State private var showLaunchView: Bool = true
    
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UITableView.appearance().backgroundColor = UIColor.clear
        UINavigationBar.appearance().tintColor = UIColor(Color.theme.accent)
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationView{
                    HomeView()
                        .navigationBarHidden(true)
                }
                .environmentObject(vm)
                .navigationViewStyle(StackNavigationViewStyle())
                
                ZStack{
                    if showLaunchView {
                        
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
                
                    
            }
        }
    }
}
