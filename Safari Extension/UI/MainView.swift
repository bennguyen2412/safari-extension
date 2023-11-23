//
//  MainView.swift
//  Safari Extension
//
//  Created by tsnanh on 23/11/2023.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab = 0
    var body: some View {
        HStack {
            Sidebar(selectedIndex: selectedTab) { index in
                selectedTab = index
            }
            .frame(width: 160)
            Divider()
            mainViewPanel(selectedTab: selectedTab)
        }
    }
    
    private func mainViewPanel(selectedTab: Int) -> AnyView {
        switch selectedTab {
        case 0:
            return AnyView(HomeView())
        case 1:
            return AnyView(SettingsView())
        default:
            return AnyView(HomeView())
        }
    }
}

#Preview {
    MainView()
}
