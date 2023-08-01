import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:notificaciones/notification_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final title = TextEditingController();
  final body = TextEditingController();
  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit();
    notificationServices.getDeviceToken().then((value) {
      print("Device token");
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color.fromARGB(201, 57, 57, 57),
              width: 50,
              height: 50,
            ),
            /*SizedBox(
              height: 25,
              child: Container(
                color: Color.fromARGB(201, 57, 57, 57),
              ),
            ),*/
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Color.fromARGB(201, 57, 57, 57),
              child: const Text(
                'NOTIFICACIONES',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(201, 57, 57, 57),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      notificationServices.getDeviceToken().then((value) async {
                        const movil =
                            "e-kHa8FgRNuWP6vp-J8ZdI:APA91bEYfvLBcuKM1c3JqCWq-91jRKvuy69WPJ4r6WeOtu7X0pkm5MmpybgLELT6BZB6SIsfqgkt68htuYq78xRwGJWK3BD9yWdSvDLi4-5m8aDQSWXU9Fpos6PWVoFcZFxQ-4huB9ry";
                        const wear =
                            "fdL1hQGgTf6JjKfJ5fBFlK:APA91bE-TUJZ3NcJXwCTED65VC1V0--2vkuynkjH7n0Xj9Rn4G7_MDznWu4cCewjiCYJwDEkn_4BlXmoIqGj355-7XjAqL-fG_yKguGoWkAjx8p2E3D3G_SZTfF6mAj7nvDRNDiXF1zB";
                        var data = {
                          "to": movil,
                          "priority": "high",
                          "notification": {
                            "title": "Hola Teléfono",
                            "body": "Soy una notificacion del wear",
                          },
                          "data": {"type": "msj", "id": "458748"}
                        };
                        await http.post(
                          Uri.parse("https://fcm.googleapis.com/fcm/send"),
                          body: jsonEncode(data),
                          headers: {
                            "Content-Type": "application/json; charset=UTF-8",
                            "Authorization":
                                "key=AAAAUlMvtrI:APA91bElKB-oeR_E5mDKCZsLO3rqPyV-OVcStZP0-KIdCZNQlnTRdfioQluq0UF5PzQj33KVuoDodQ0zPaRNJoM0EoxmYEKwa9Y-UuWobTms8pka2G72_ccOoPuCLfpqUyonWxyoktse"
                          },
                        );
                      });
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xC9C6C6C6)),
                    ),
                    child: const Text('Enviar notificación'),
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xC9393939),
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
