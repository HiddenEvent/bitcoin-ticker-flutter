import 'package:flutter/cupertino.dart';

import 'network.dart';

const _url = 'https://rest.coinapi.io/v1/exchangerate';
const _apiKey = '';

class BitModel {
  BitModel({@required this.coinType,@required this.selectedCurrency});

  final String coinType;
  final String selectedCurrency;


  Future<dynamic> getBitPrice () async{
    print(coinType);
    NetworkHelper networkHelper = await
    NetworkHelper(url: '$_url/$coinType/$selectedCurrency?a'
        'pikey=$_apiKey');
   return await networkHelper.getData();
  }
}