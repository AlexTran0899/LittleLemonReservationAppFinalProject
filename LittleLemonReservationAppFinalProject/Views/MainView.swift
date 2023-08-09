//
//  MainView.swift
//  LittleLemonReservationAppFinalProject
//
//  Created by Alex Tran on 8/8/23.
//

import SwiftUI

struct MainView: View {
  @EnvironmentObject var model:ContentModel
  @State var tabSelection = 0
  
  var body: some View {
    TabView(selection: $model.tabViewSelectedIndex){
      LocationView()
        .tag(0)
        .tabItem {
          Label("location",systemImage: "fork.knife")
        }
      Color.blue
        .tag(1)
        .tabItem {
          Label("trash",systemImage: "trash")
        }
    }
    .edgesIgnoringSafeArea(.all)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
      .environmentObject(ContentModel())
  }
}
