//
//  EndPointRequest.swift
//  iFipe
//
//  Created by Gabriel on 07/01/23.
//

import Foundation

enum EndPointRequest {
    case tableReferenceConsult
    case brandConsult
    case modelsConsult
    case modelYearConsult
    case consultModelsWithYear
    case consultFipeValue
    
    var description: String {
        switch self {
        case .tableReferenceConsult:
            return "/ConsultarTabelaDeReferencia"
        case .brandConsult:
            return "/ConsultarMarcas"
        case .modelsConsult:
            return "/ConsultarModelos"
        case .modelYearConsult:
            return "/ConsultarAnoModelo"
        case .consultModelsWithYear:
            return "/ConsultarModelosAtravesDoAno"
        case .consultFipeValue:
            return "/ConsultarModelos"
        }
    }
}
