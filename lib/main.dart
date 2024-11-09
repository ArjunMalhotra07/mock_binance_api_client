import 'dart:convert';

import 'package:client_socket/stock_model/stock_model.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebSocket Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WebSocketPage(),
    );
  }
}

class WebSocketPage extends StatefulWidget {
  @override
  _WebSocketPageState createState() => _WebSocketPageState();
}

class _WebSocketPageState extends State<WebSocketPage> {
  final WebSocketChannel channel = WebSocketChannel.connect(
    Uri.parse('ws://10.0.2.2:12312/ws'),
  );

  final TextEditingController _textController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WebSocket Example")),
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
                    // Parse JSON data into Student object
                    final stock =
                        StockModel.fromJson(jsonDecode(snapshot.data));
                    return Text(
                      "Symbol: ${stock.s}\n"
                      "Best Bid Price: ${stock.b}\n"
                      "Best Bid Qty: ${stock.B}\n"
                      "Best Ask Price: ${stock.a}\n"
                      "Best Ask Qty: ${stock.A}",
                      style: const TextStyle(fontSize: 16),
                    );
                  } catch (e) {
                    return const Text("Invalid data received.");
                  }
                }
                return const Text("No messages received.");
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                channel.sink.add("Client Ping");
              },
              child: const Text("Send Ping"),
            ),
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
