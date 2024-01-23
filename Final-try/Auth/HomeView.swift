//
//  HomeView.swift
//  Final-try
//
//  Created by Amalitech-PC-4100433 on 23/01/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = AuthViewModel()
    @State var name: String
    var body: some View {
        Text(name)
            .onAppear(){
                print("i appeared")
                print(vm.name)
            }
    }
}

#Preview {
    HomeView(name: "String")
}
