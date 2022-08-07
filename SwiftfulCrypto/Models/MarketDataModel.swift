//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 04.05.22.
//

import Foundation

//JSON DATA
/*
 URL: https://api.coingecko.com/api/v3/global
 JSON RESPONSE:
 {
   "data": {
     "active_cryptocurrencies": 13382,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 799,
     "total_market_cap": {
       "btc": 47670543.38120259,
       "eth": 647496339.2965364,
       "ltc": 18022199261.69701,
       "bch": 6392161843.1435,
       "bnb": 4694081582.198189,
       "eos": 871935990879.876,
       "xrp": 2955528320864.2246,
       "xlm": 10431970730117.096,
       "link": 161246303493.89105,
       "dot": 121425987122.23181,
       "yfi": 103758532.65495738,
       "usd": 1809119696493.349,
       "aed": 6645077557189.736,
       "ars": 209641152253588.34,
       "aud": 2542965582819.822,
       "bdt": 156663459125062.06,
       "bhd": 682119535964.3335,
       "bmd": 1809119696493.349,
       "brl": 8973052782637.375,
       "cad": 2318795752107.6313,
       "chf": 1770417198826.2659,
       "clp": 1547719991547025.2,
       "cny": 11955205690337,
       "czk": 42345341087941.22,
       "dkk": 12779683046098.715,
       "eur": 1717949109388.564,
       "gbp": 1447371740221.9302,
       "hkd": 14198387475610.002,
       "huf": 654533698917067.8,
       "idr": 26145488309706680,
       "ils": 6067163315743.398,
       "inr": 138296335224019.12,
       "jpy": 235353550225069.28,
       "krw": 2278021955308521,
       "kwd": 554857010914.5103,
       "lkr": 639662564954640.6,
       "mmk": 3342789530787093.5,
       "mxn": 36669964351909.805,
       "myr": 7876002598683.792,
       "ngn": 749279111969477.8,
       "nok": 16974331492944.209,
       "nzd": 2804276640901.016,
       "php": 94854857557571.25,
       "pkr": 335173842277618.7,
       "pln": 8063175931602.689,
       "rub": 123472433758628.61,
       "sar": 6785879534048.107,
       "sek": 17831224655427.684,
       "sgd": 2503065447913.659,
       "thb": 62082084382890.11,
       "try": 26790710849461.05,
       "twd": 53344606121531.625,
       "uah": 53079211880295.055,
       "vef": 181147155209.87918,
       "vnd": 41545529270121496,
       "zar": 28489890341998.496,
       "xdr": 1316905264189.6187,
       "xag": 80113084699.04231,
       "xau": 970447987.5929606,
       "bits": 47670543381202.59,
       "sats": 4767054338120259
     },
     "total_volume": {
       "btc": 2081857.364732325,
       "eth": 28277316.073834706,
       "ltc": 787061476.5518302,
       "bch": 279157069.8763354,
       "bnb": 204998886.5116883,
       "eos": 38078994604.12347,
       "xrp": 129073175278.55975,
       "xlm": 455582704805.71234,
       "link": 7041912691.874002,
       "dot": 5302888694.572576,
       "yfi": 4531319.553758632,
       "usd": 79007472889.6865,
       "aed": 290202348671.10815,
       "ars": 9155401759951.438,
       "aud": 111055827170.24025,
       "bdt": 6841771732196.356,
       "bhd": 29789372615.691784,
       "bmd": 79007472889.6865,
       "brl": 391869164785.5566,
       "cad": 101265932197.00618,
       "chf": 77317266022.15738,
       "clp": 67591683131855.695,
       "cny": 522105083096.9152,
       "czk": 1849296314939.7354,
       "dkk": 558111474746.8243,
       "eur": 75025891293.41061,
       "gbp": 63209296625.61048,
       "hkd": 620068818957.0243,
       "huf": 28584650077500.586,
       "idr": 1141819948575392.5,
       "ils": 264963806493.86136,
       "inr": 6039646783534.345,
       "jpy": 10278307883630.4,
       "krw": 99485268014608.8,
       "kwd": 24231591935.26685,
       "lkr": 27935201223644.9,
       "mmk": 145985560679876.25,
       "mxn": 1601442524789.81,
       "myr": 343959033225.25,
       "ngn": 32722350677228.676,
       "nok": 741299228485.9973,
       "nzd": 122467745561.89938,
       "php": 4142480235808.12,
       "pkr": 14637637469986.148,
       "pln": 352133225377.8898,
       "rub": 5392260656780.884,
       "sar": 296351421278.6391,
       "sek": 778721276035.1433,
       "sgd": 109313317355.65814,
       "thb": 2711234977057.5015,
       "try": 1169997963781.5,
       "twd": 2329653770354.276,
       "uah": 2318063532096.2876,
       "vef": 7911018260.444314,
       "vnd": 1814367111175204.5,
       "zar": 1244204152543.68,
       "xdr": 57511593710.697975,
       "xag": 3498680811.3014274,
       "xau": 42381188.60748555,
       "bits": 2081857364732.3252,
       "sats": 208185736473232.5
     },
     "market_cap_percentage": {
       "btc": 39.91981557211259,
       "eth": 18.626277977032128,
       "usdt": 4.599465524200216,
       "bnb": 3.5827449197037544,
       "usdc": 2.7071029786066085,
       "xrp": 1.632978834000714,
       "sol": 1.593068912522526,
       "luna": 1.5677956381555767,
       "ada": 1.3827917392986864,
       "ust": 1.03297821322327
     },
     "market_cap_change_percentage_24h_usd": -0.9787019503574703,
     "updated_at": 1651628776
   }
 }
 
 */

// MARK: - CoinModel
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
        
    }
    
    var marketCap: String {
        
        
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }){
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPerentageString()
        }
        
        return ""
        
    }
    
}
