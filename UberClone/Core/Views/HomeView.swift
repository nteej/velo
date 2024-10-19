//
//  HomeView.swift
//  UberClone
//
//  Created by Tharanga on 2024-10-19.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
