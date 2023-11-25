//
//  CreditView.swift
//  Safari Extension
//
//  Created by tsnanh on 25/11/2023.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
      VStack {
        Text("Movie data loaded from omdbapi.\nPopcorn symbol and hearts icon downloaded from stockio.com \n\nThis browser extension is not endorsed nor affiliated with Netflix, IMDb, Metacritic or Rotten Tomatoes in any way.\nAll product names, logos and brands are property of their respective owners.")
        Spacer()
      }
      .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    CreditView()
}
