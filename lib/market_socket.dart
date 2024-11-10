import 'dart:convert';

import 'package:client_socket/constants.dart';
import 'package:client_socket/stock_model/stock_model.dart';
import 'package:client_socket/user/user.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static List<String> coinsList = [
    "ETHBTC",
    "LTCBTC",
    "BNBBTC",
    "NEOBTC",
    "QTUMETH",
    "EOSETH",
    "SNTETH",
    "BNTETH",
    "BCCBTC"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Market Data Example")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
                    final crypto = Crypto.fromJson(jsonDecode(snapshot.data));
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
            const Spacer(),
            Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _textController,
                      decoration: const InputDecoration(
                        labelText: "Enter message",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a message";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        channel.sink.add(_textController.text);
                        _textController.clear();
                      }
                    },
                    child: const Text("Send"),
                  ),
                ],
              ),
            ),
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
