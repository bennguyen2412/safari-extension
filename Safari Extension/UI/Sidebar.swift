//
//  Sidebar.swift
//  Safari Extension
//
//  Created by tsnanh on 23/11/2023.
//

import SwiftUI

struct SidebarItemData : Identifiable {
  var id: UUID = UUID()
  
  let title: String
  let index: Int
}

let items: [SidebarItemData] = [
  .init(title: "Home", index: 0),
  .init(title: "Settings", index: 1),
  .init(title: "Tip Jar", index: 2),
  .init(title: "Credits", index: 3),
]

struct Sidebar: View {
  let selectedIndex: Int
  let onItemSelected: (Int) -> Void
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      ForEach(items) { item in
        SidebarItem(title: item.title, isSelected: item.index == selectedIndex)
          .onTapGesture {
            onItemSelected(item.index)
          }
      }
      Spacer()
    }
  }
}

struct SidebarItem: View {
  let title: String
  let isSelected: Bool
  var body: some View {
    ZStack {
      (isSelected ? Color.blue : Color.clear)
        .ignoresSafeArea()
        .clipShape(.rect(cornerSize: .init(width: 4, height: 4)), style: FillStyle())
        .overlay(
          Text(title).padding(.leading),
          alignment: .leading
        )
    }
    .padding(.init(8))
    .frame(height: 56)
    .contentShape(Rectangle())
  }
}

#Preview {
  Sidebar(selectedIndex: 0) { index in
    
  }
}
