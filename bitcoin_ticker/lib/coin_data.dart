import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getData({required String currency}) async {
    Map<String, String> cryptoPrices = {};
    for (var crypto in cryptoList) {
      var uri = Uri.parse(
          'https://rest.coinapi.io/v1/exchangerate/$crypto/$currency');
      http.Response response = await http.get(uri,
          headers: {'X-CoinAPI-Key': '426459D7-3FFB-46CD-BDE6-AC153D80656E'});
      if (response.statusCode == 200) {
        var rate = jsonDecode(response.body);
        cryptoPrices[crypto] = rate['rate'].toStringAsFixed(0);
      } else {
        print(response.statusCode);
      }
    }

    return cryptoPrices;
  }
}
