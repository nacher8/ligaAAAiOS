//
//  File.swift
//  ligaAAAiOS
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 22/12/23.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct UserModel: Decodable, Identifiable {
    @DocumentID var id: String?
    let user: String
    let name: String
}

final class LigaDatasource {
    private let database = Firestore.firestore()
    private let collection = "user"
    
    func getUser(completionBlock: @escaping (Result<[UserModel], Error>) -> Void) {
        database.collection(collection)
            .addSnapshotListener { query, error in
                if let error = error {
                    print("Error getting user \(error)")
                    completionBlock(.failure(error))
                    return
                }
                guard let documents = query?.documents.compactMap({ $0 }) else {
                    completionBlock(.success([]))
                    return
                }
                let user = documents.map { try? $0.data(as: UserModel.self) }
                    .compactMap { $0 }
                completionBlock(.success(user))
            }
    }
}
