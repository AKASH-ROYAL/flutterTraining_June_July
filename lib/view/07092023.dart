import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiIntegration extends StatefulWidget {
  const ApiIntegration({super.key});

  @override
  State<ApiIntegration> createState() => _ApiIntegrationState();
}

class _ApiIntegrationState extends State<ApiIntegration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            print("This method has started");
            var response = await http.get(
                Uri.parse("https://api.predic8.de/shop/v2/vendors/2/products"));
            var body = jsonDecode(response.body);
            print(body);
            print(body['meta']);
            print(body['products']);
            print("API");
          },
          child: Text("API"),
        ),
      ),
    );
  }
}
