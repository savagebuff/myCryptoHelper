//
//  Models.swift
//  myCryptoHelper
//
//  Created by Dinar Garaev on 29.01.2022.
//

import Foundation

struct Crypto: Codable {
    let id:         String?
    let currency:   String?
    let symbol:     String?
    let name:       String?
    let price:      String?
    let logo_url:   String?
}

/*
{
    "id": "BTC",
    "currency": "BTC",
    "symbol": "BTC",
    "name": "Bitcoin",
    "logo_url": "https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/btc.svg",
    "status": "active",
    "price": "37894.03081794",
    "price_date": "2022-01-28T00:00:00Z",
    "price_timestamp": "2022-01-28T21:29:00Z",
    "circulating_supply": "18942475",
    "max_supply": "21000000",
    "market_cap": "717806731418",
    "market_cap_dominance": "0.4041",
    "num_exchanges": "408",
    "num_pairs": "84814",
    "num_pairs_unmapped": "6632",
    "first_candle": "2011-08-18T00:00:00Z",
    "first_trade": "2011-08-18T00:00:00Z",
    "first_order_book": "2017-01-06T00:00:00Z",
    "rank": "1",
    "rank_delta": "0",
    "high": "67600.81519927",
    "high_timestamp": "2021-11-08T00:00:00Z",
    "1d": {
      "volume": "29816252607.52",
      "price_change": "1609.13840434",
      "price_change_pct": "0.0443",
      "volume_change": "-3782956390.92",
      "volume_change_pct": "-0.1126",
      "market_cap_change": "30514409811.80",
      "market_cap_change_pct": "0.0444"
    },
    "30d": {
      "volume": "1081307085750.97",
      "price_change": "-8665.20722349",
      "price_change_pct": "-0.1861",
      "volume_change": "-149045620886.96",
      "volume_change_pct": "-0.1211",
      "market_cap_change": "-162834763929.24",
      "market_cap_change_pct": "-0.1849"
    }
  }
*/
