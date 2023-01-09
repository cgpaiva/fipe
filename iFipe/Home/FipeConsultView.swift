//
//  ContentView.swift
//  iFipe
//
//  Created by Gabriel on 05/01/23.
//

import SwiftUI

struct FipeConsultView: View {
    var colors = ["Red", "Greesssn", "Blue", "Tartan"]
    @State private var tabelaSelecionada: TabelaReferencia?
    //    @State private var apiResult: [TabelaReferencia]?
    
    @ObservedObject var viewModel = FileConsultViewModel(apiCall: APIRequest())
    
    var body: some View {
        
        GeometryReader { view in
            VStack {
                Image("logoteste")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 40)
                    .frame(maxWidth: 250)
                
                
                Picker("Você deseja consultar a tabela fipe referente a qual mês?", selection: $tabelaSelecionada) {
                    
                    if let tabela = viewModel.tabelasReferencia {
                        ForEach(tabela, id: \.self) { tabela  in
                            Text(tabela.mes)
                        }
                    }
                    
                    
                }
                .frame(width: view.size.width)
                .pickerStyle(.menu)
                .background(Color.white)
                .cornerRadius(20)
               
            }
            .padding(.horizontal, 20)
            .frame(width: view.size.width, height: view.size.height)
            .background(Color("background_color"))
            
        }
        
        .onAppear(perform: callFipe)
        
    }
    
    func callFipe() {
        viewModel.callFipe(endPoint: EndPointRequest.tableReferenceConsult)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FipeConsultView()
    }
}
