//
//  LigaViewModel.swift
//  ligaAAAiOS
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 22/12/23.
//

import Foundation

final class LigaViewModel: ObservableObject {
    @Published var user: [UserModel] = []
    @Published var messageError: String?
    private let ligaRepository: LigaRepository
    
    init(ligaRepository: LigaRepository = LigaRepository()) {
        self.ligaRepository = ligaRepository
    }
    
    func getUser() {
        ligaRepository.getUser { result in
            switch result {
            case .success(let userModel):
                self.user = userModel
            case .failure(let error):
                self.messageError = error.localizedDescription
            }
        }
    }
}
