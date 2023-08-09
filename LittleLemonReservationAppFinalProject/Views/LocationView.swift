//
//  LocationView.swift
//  LittleLemonReservationAppFinalProject
//
//  Created by Alex Tran on 8/8/23.
//

import SwiftUI

struct LocationView: View {
  var body: some View {
    VStack {
      LittleLemonLogo()
        .padding(.top, 50)
      
      
      EmptyView()
        .padding([.leading, .trailing], 40)
        .padding([.top, .bottom], 8)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
      
      
      NavigationView {
        EmptyView()
          .navigationBarTitle("")
          .navigationBarHidden(true)
      }
    }
    .padding()
  }
}

struct LocationView_Previews: PreviewProvider {
  static var previews: some View {
    LocationView()
  }
}
