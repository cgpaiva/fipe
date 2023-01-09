//
//  TabelaReferencia.swift
//  iFipe
//
//  Created by Gabriel on 07/01/23.
//

import Foundation

struct TabelaReferencia: Encodable, Decodable, Hashable {
    let codigo: Int
    let mes: String
    
    private enum CodingKeys: String, CodingKey {
        case codigo = "Codigo"
        case mes = "Mes"
    }
    
    func hash(into hasher: inout Hasher) {
         hasher.combine(codigo)
         hasher.combine(mes)
     }
     
     static func == (lhs: TabelaReferencia, rhs: TabelaReferencia) -> Bool {
         return lhs.codigo == rhs.codigo && lhs.mes == rhs.mes
     }
}
