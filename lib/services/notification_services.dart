import 'package:flutter_local_notifications/flutter_local_notifications.dart';
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> initNotifications() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('ic_launcher');
  const DarwinInitializationSettings initializationSettingsDarwin =
      DarwinInitializationSettings();
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwin,
  );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}
Future<void> showNotification() async {
  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
        'channel id',
        'channel name',
        importance: Importance.max,
        priority: Priority.high,
      );
  const NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails);
  await flutterLocalNotificationsPlugin.show(
    0,
    'Hello World',
    'This is a notification from Flutter Local Notifications package in Android',
    notificationDetails,
  );
}