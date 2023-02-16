import 'package:flutter/material.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            'Payment Metods',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset(_ProjeString.path),
                ),
                Text(_ProjeString.data,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 15)),
                _ButonText(
                    icerik: _ProjeString.buton1, icon: Icon(Icons.credit_card)),
                _ButonText(
                    icerik: _ProjeString.buton2, icon: Icon(Icons.apple)),
                _ButonText(
                    icerik: _ProjeString.buton3, icon: Icon(Icons.paypal)),
                _ButonText(
                    icerik: _ProjeString.buton4,
                    icon: Icon(Icons.currency_bitcoin)),
                Container(
                  width: 500,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child: Text(
                        _ProjeString.buton5,
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjeString {
  static const String path = 'assets/png/ekran.png';
  static const String data =
      'Choose from one of the methods indicated here for payment:';
  static const String buton1 = 'Credit/Debit Card';
  static const String buton2 = 'Apple Pay';
  static const String buton3 = 'Paypal';
  static const String buton4 = 'Crypto';
  static const String buton5 = 'Pay now';
}

class _ButonText extends StatelessWidget {
  const _ButonText({Key? key, required this.icerik, required this.icon})
      : super(key: key);
  final String icerik;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              shape: StadiumBorder(), backgroundColor: Colors.white),
          onPressed: () {},
          icon: icon,
          label: Text(
            icerik,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20),
          )),
    );
  }
}
