//
//  FileConsultViewModel.swift
//  iFipe
//
//  Created by Gabriel on 07/01/23.
//

import Foundation
import Alamofire

protocol FileConsultViewModelProtocol {
    func callFipe(endPoint: EndPointRequest) -> Void
}

class FileConsultViewModel: FileConsultViewModelProtocol, ObservableObject {
    
    @Published var tabelasReferencia: [TabelaReferencia]?
    let apiCall: APICall
    
    init(apiCall: APICall) {
        self.apiCall = apiCall
    }

    func callFipe(endPoint: EndPointRequest) {
        apiCall.makeCall(endPoint: endPoint) { result in
            switch result {
            case .success(let tabela):
                self.tabelasReferencia = tabela
            
            case .failure(let error):
                print(error)
            }
        }
    }
}
