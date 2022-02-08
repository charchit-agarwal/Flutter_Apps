import 'package:flutter/material.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'INR';
  Map<String, String> rates = {};
  bool isWaiting = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrices();
  }

  void getPrices() async {
    isWaiting = true;
    var prices = await CoinData().getData(currency: selectedCurrency);
    isWaiting = false;
    setState(() {
      rates = prices;
    });
  }

  Column makeCards() {
    List<CryptoCard> cryptoCards =[];
    for (var crypto in cryptoList) {
      cryptoCards.add(CryptoCard(
          crypto: crypto,
          rate: isWaiting ? '?' : rates[crypto]!,
          currency: selectedCurrency));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoCards,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('🤑 Coin Ticker')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          makeCards(),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
                value: selectedCurrency,
                items: [
                  for (var currency in currenciesList)
                    DropdownMenuItem(
                      child: Text(currency),
                      value: currency,
                    ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedCurrency = value!;
                    getPrices();
                  });
                }),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard(
      {Key? key,
      required this.crypto,
      required this.rate,
      required this.currency})
      : super(key: key);

  final String crypto;
  final String rate;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $crypto = $rate $currency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
