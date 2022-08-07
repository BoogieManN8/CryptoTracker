//
//  SettingsView.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 06.05.22.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coffeURL = URL(string: "https://www.buymeacoffee.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://github.com/boogeyman8")!
    let linkedInURL = URL(string: "https://www.linkedin.com/in/tengo-kiknadze-8695391ab/")!
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.theme.background
                    .ignoresSafeArea()
                List{
                    
                    CryptoTrackerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    CoinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    DeveloperSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


extension SettingsView {
    
    private var CryptoTrackerSection: some View {
        Section(header: Text("Crypto Tracker")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100 , height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This application was made by Tengo Kiknadze, for learning purposes. It uses MVVM architecture , Combine and Core Data!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding()
            Link("Watch Youtube 🦉", destination: youtubeURL)
            Link("Support this poor boy ☕️", destination: coffeURL)
            
        }
    }
    
    private var CoinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding()
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
            
            
        }
    }
    
    private var DeveloperSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100 , height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Tengo Kiknadze. It uses SwiftUI and is written 100% in Swift.The Project benefits from multi-threading , publishers/subscribers and data persistence.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding()
            Link("Check Linked In 👽", destination: linkedInURL)
            
            
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Services", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
    
}
