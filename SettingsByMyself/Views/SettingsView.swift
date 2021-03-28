//
//  SettingsView.swift
//  SettingsByMyself
//
//  Created by MD Tanvir Alam on 28/3/21.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var settingVM:SettingsViewModel
    @Binding var dissmiss:Bool
    var body: some View {
        VStack{
            
            Picker(selection: $settingVM.choosenUserType, label: Text("Choose User Type"), content: {
                ForEach(SettingsViewModel.userTypes, id: \.self) { userType in
                    Text(userType)
                }
            })
            
            Button(action: {
                dissmiss.toggle()
            }, label: {
                Text("Dismiss")
            })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(dissmiss: .constant(false))
    }
}
