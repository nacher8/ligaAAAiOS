//
//  LigaRepository.swift
//  ligaAAAiOS
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 22/12/23.
//

import Foundation

final class LigaRepository {
    private let ligaDatasource: LigaDatasource
    
    init(ligaDatasource: LigaDatasource = LigaDatasource()) {
        self.ligaDatasource = ligaDatasource
    }
    
    func getUser(completionBlock: @escaping (Result<[UserModel], Error>) -> Void) {
        ligaDatasource.getUser(completionBlock: completionBlock)
    }
}
