//
//  APIRequest.swift
//  iFipe
//
//  Created by Gabriel on 07/01/23.
//

import Foundation
import Alamofire

protocol APICall {
    func makeCall(endPoint: EndPointRequest, completion: @escaping (Result<[TabelaReferencia], AFError>) -> Void)
}

class APIRequest: APICall {
    func makeCall(endPoint: EndPointRequest, completion: @escaping (Result<[TabelaReferencia], AFError>) -> Void) {
        AF.request(
            "https://veiculos.fipe.org.br/api/veiculos\(endPoint.description)",
            method: .post).responseDecodable(of: [TabelaReferencia].self) { response in
                completion(response.result)
            }
        
//        AF.request(
//            "https://veiculos.fipe.org.br/api/veiculos\(endPoint.description)",
//            method: .post).responseJSON { response in
//                print(response)
//            }
    }
    
    
    
//    AF.request("https://veiculos.fipe.org.br/api/veiculos\(endPoint.description)", method: .post).response  {response in
//        if let data = response.data {
//
//            print(try! JSONEncoder().encode(data))
//            do {
//                let tabelaReferencia = try JSONDecoder().decode([TabelaReferencia].self, from: data)
//                completion(Result.success(tabelaReferencia))
//                print(try! JSONEncoder().encode(tabelaReferencia))
//            } catch {
//                print(error._code)
//                print(error.localizedDescription)
//            }
//
//        } else {
//            completion(
//                Result.failure(
//                    NSError(
//                        domain: "Opsss, não foi possivel conectar ao servidor",
//                        code: 1
//                    )
//                )
//            )
//        }
//    } .response { response in
//        print(response)
//    }
}
