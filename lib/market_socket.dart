import 'dart:convert';

import 'package:client_socket/constants.dart';
import 'package:client_socket/stock_model/stock_model.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MarketSocketPage extends StatefulWidget {
  @override
  _MarketSocketPageState createState() => _MarketSocketPageState();
}

class _MarketSocketPageState extends State<MarketSocketPage> {
  final WebSocketChannel channel =
      WebSocketChannel.connect(Uri.parse(Constants.marketURL));

  final TextEditingController _textController = TextEditingController();
  static List<String> coinsList = [
    "btcusdt",
    "ltcbtc",
    "bnbbtc",
    "neobtc",
    "qtumeth",
    "eoseth",
    "snteth",
    "bnteth",
    "bccbtc",
    "gasbtc",
    "bnbeth",
    "ethbtc"
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (coinsList.isNotEmpty) {
        channel.sink.add(coinsList[0]);
      }
    });
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Market Data Example")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ListView(
              children: [
                StreamBuilder(
                  stream: channel.stream,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Text("Connecting...");
                    } else if (snapshot.hasError) {
                      return Text("Error: ${snapshot.error}");
                    } else if (snapshot.hasData) {
                      try {
                        final crypto =
                            Crypto.fromJson(jsonDecode(snapshot.data));
                        return Text(
                          "Symbol: ${crypto.symbol}\nBestBidPrice: ${crypto.bestBidPrice}\nBestBidQty: ${crypto.bestBidQty}\nBestAskPrice: ${crypto.bestAskPrice}\nBestAskQty: ${crypto.bestAskQty}\n",
                          style: const TextStyle(fontSize: 16),
                        );
                      } catch (e) {
                        return Text("Invalid data received. $e");
                      }
                    }
                    return const Text("No messages received.");
                  },
                ),
                const SizedBox(height: 20),
                Wrap(
                    children: coinsList.map((item) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ElevatedButton(
                        onPressed: () {
                          channel.sink.add(item);
                          print("added $item");
                        },
                        child: Text(item)),
                  );
                }).toList()),
                // const Spacer(),
              ],
            ),
            // )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    channel.sink.close();
    super.dispose();
  }
}
