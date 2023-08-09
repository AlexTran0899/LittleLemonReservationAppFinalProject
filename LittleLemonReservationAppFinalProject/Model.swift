//
//  Model.swift
//  LittleLemonReservationAppFinalProject
//
//  Created by Alex Tran on 8/8/23.
//

import Foundation

class Model:ObservableObject {
  @Published var displayingReservationForm = false
  @Published var followNavitationLink = false
  @Published var displayTabBar = true
  @Published var tabBarChanged = false
  
  @Published var tabViewSelectedIndex = Int.max {
    didSet {
      tabBarChanged = true
    }
  }
}
