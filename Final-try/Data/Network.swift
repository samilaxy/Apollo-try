//
//  Network.swift
//  Qwerrre
//
//  Created by Amalitech-PC-4100433 on 19/01/2024.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private init(){}
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://arms-microapi.amalitech-dev.net/")!)
}
