//
//  LocationView.swift
//  LittleLemonReservationAppFinalProject
//
//  Created by Alex Tran on 8/8/23.
//

import SwiftUI

struct LocationView: View {
  @EnvironmentObject var model:ContentModel
  
  var body: some View {
    VStack {
      LittleLemonLogo()
        .padding(.top, 50)
      
      if model.displayingReservationForm {
        Text("Reservation Details")
          .padding([.leading, .trailing], 40)
          .padding([.top, .bottom], 8)
          .background(Color.gray.opacity(0.2))
          .cornerRadius(20)
      }
      
      NavigationView {
        List {
          ForEach(model.restaurants) {restaurant in
            NavigationLink {
              EmptyView()
            } label: {
              VStack(alignment: .leading) {
                Text(restaurant.city)
                  .font(.title3)
                HStack {
                  Text(restaurant.neighborhood)
                  Text("-")
                  Text(restaurant.phoneNumber)
                }.font(.footnote)
                  .foregroundColor(.gray)
              }
            }
          }
        }
        .listStyle(.inset)
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
      .environmentObject(ContentModel())
  }
}
