//
//  ContentView.swift
//  LittleLemonReservationAppFinalProject
//
//  Created by Alex Tran on 8/8/23.
//

import SwiftUI

struct MainView: View {
  @StateObject var model = ContentModel()
  @State var tabSelection = 0
  
  var body: some View {
    TabView(selection: $model.tabViewSelectedIndex){
      LocationView()
        .tag(0)
        .tabItem {
          Label("location",systemImage: "fork.knife")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
