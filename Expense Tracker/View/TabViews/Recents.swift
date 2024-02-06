//
//  Recents.swift
//  Expense Tracker
//
//  Created by Michael David Machacuay on 6/02/24.
//

import SwiftUI

struct Recents: View {
    var body: some View {
        GeometryReader {
            /// For Animation Purpose
            let size = $0.size
            
            NavigationStack {
                ScrollView(.vertical) {
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
                        Section {
                            
                        } header: {
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
//    Recents()
    ContentView()
}
