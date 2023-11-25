//
//  MainView.swift
//  Safari Extension
//
//  Created by tsnanh on 23/11/2023.
//

import SwiftUI

struct MainView: View {
  @StateObject var selectedTabObject = SelectedTab()
  var body: some View {
    HStack {
      Sidebar(selectedIndex: selectedTabObject.currentTab) { index in
        selectedTabObject.currentTab = index
      }
      .frame(width: 160)
      Divider()
      mainViewPanel(selectedTab: selectedTabObject.currentTab)
    }
  }
  
  private func mainViewPanel(selectedTab: Int) -> AnyView {
    switch selectedTab {
    case 0:
      return AnyView(HomeView(currentTab: selectedTabObject))
    case 1:
      return AnyView(SettingsView())
    case 2:
      return AnyView(TipJarView())
    default:
      return AnyView(CreditView())
    }
  }
}

class SelectedTab: ObservableObject {
  @Published var currentTab = 0
}

#Preview {
  MainView()
}
