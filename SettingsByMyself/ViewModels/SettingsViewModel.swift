//
//  SettingsViewModel.swift
//  SettingsByMyself
//
//  Created by MD Tanvir Alam on 28/3/21.
//

import Foundation

class SettingsViewModel:ObservableObject{
    @Published var showSettings = false
    
    @Published var choosenUserType:String = UserDefaults.standard.string(forKey: "userType") ?? SettingsViewModel.userTypes[0]{
        didSet{
            UserDefaults.standard.set(self.choosenUserType, forKey: "userType")
        }
    }
    
    
    static var userTypes = ["Client", "Worker"]
}
