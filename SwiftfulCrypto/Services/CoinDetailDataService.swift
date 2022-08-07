//
//  CoinDetailDataService.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 05.05.22.
//

import Foundation
import Combine

class CoinDetaliDataService {
    
    @Published var CoinDetails: CoinDetailModel? = nil
    
    var coinDetailSubscription: AnyCancellable?
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoins()
    }
    
    func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false") else { return }
        
        coinDetailSubscription = NetworkingManager.download(url: url)
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedCoinDetails in
                self?.CoinDetails = returnedCoinDetails
                self?.coinDetailSubscription?.cancel()
            })
        
            
            
        
    }
}
