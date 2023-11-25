//
//  SettingsView.swift
//  Safari Extension
//
//  Created by tsnanh on 23/11/2023.
//

import SwiftUI

struct SettingsView: View {
  @State private var isOn = false
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        Text("Metascore")
          .font(.title2)
          .bold()
        Divider()
        
        Toggle(isOn: $isOn) {
          Text("Show Metascore ratings")
        }
        .toggleStyle(.checkbox)
        Toggle(isOn: $isOn) {
          Text("Hide Metascore ratings when unavailable")
        }
        .toggleStyle(.checkbox)
        
        Text("Rotten Tomatoes")
          .font(.title2)
          .bold()
          .padding(.top)
        Divider()
        
        Toggle(isOn: $isOn) {
          Text("Show Rotten Tomatoes ratings")
        }
        .toggleStyle(.checkbox)
        Toggle(isOn: $isOn) {
          Text("Hide Rotten Tomatoes ratings when unavailable")
        }
        .toggleStyle(.checkbox)
        
        Text("Tile Ratings")
          .font(.title2)
          .bold()
          .padding(.top)
        Divider()
        
        Toggle(isOn: $isOn) {
          Text("Show ratings also on movies tiles")
        }
        .toggleStyle(.checkbox)
        
        Button {
          
        } label: {
          Text("Apply Settings")
        }
        .padding(.init(top: 32, leading: 0, bottom: 0, trailing: 0))
        
        Text("To enable all the settings, please check out the Tip Jar section.")
          .font(.caption)
          .padding(.init(top: 16, leading: 0, bottom: 0, trailing: 0))
        
      }
      .padding(.all)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}

#Preview {
  SettingsView()
}
