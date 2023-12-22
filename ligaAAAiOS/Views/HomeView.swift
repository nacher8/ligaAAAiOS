//
//  SwiftUIView.swift
//  ligaAAAiOS
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 21/12/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var ligaViewModel: LigaViewModel
    
    var body: some View {
        VStack {
            ForEach(ligaViewModel.user) { user in
                Text("Numero usuario \(user.user)")
                Text("Nombre usuario \(user.name)")
            }
        }
        .task {
            ligaViewModel.getUser()
        }
    }
}

#Preview {
    HomeView()
}
