//
//  ViagemDestaqueViewModel.swift
//  AppViagens
//
//  Created by João Víctor Benetti Filipim on 19/06/25.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel {
    var tituloSessao: String {
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        viagens.count
    }
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
    
}
