import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24,
          elevation: 0.0,
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: IconButton(
                onPressed: () async {
                  try {
                    dynamic conversationObject = {
                      'appId':
                          '24d01f7e9396ec82931daf433f88c8ece' // The [APP_ID](https://dashboard.kommunicate.io/settings/install) obtained from kommunicate dashboard.
                    };
                    dynamic result =
                        await KommunicateFlutterPlugin.buildConversation(
                            conversationObject);
                    print(
                        "Conversation builder success : " + result.toString());
                  } on Exception catch (e) {
                    print("Conversation builder error occurred : " +
                        e.toString());
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.robot,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
