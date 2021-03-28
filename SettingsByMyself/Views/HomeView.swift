//
//  HomeView.swift
//  SettingsByMyself
//
//  Created by MD Tanvir Alam on 28/3/21.
//

import SwiftUI

struct HomeView: View {
    @StateObject var settingsVM = SettingsViewModel()
    var body: some View {
        VStack{
            switch settingsVM.choosenUserType{
            case "Client":
                Text("This is client")
            case "Worker":
                Text("This is worker")
            default:
                Text("This is default")
            }
        }.navigationTitle("Tanvirgeek Co")
        .navigationBarItems(trailing: Button(action: {
            settingsVM.showSettings.toggle()
        }, label: {
            Text("Settings")
        }))
        .sheet(isPresented: $settingsVM.showSettings, content: {
            SettingsView(dissmiss: $settingsVM.showSettings)
                .environmentObject(settingsVM)
        })
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
