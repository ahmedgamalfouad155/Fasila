// lib/core/helper/notification_scheduler.dart

import 'package:fasila/core/helper/notification_initializer.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

/// Helper class for managing local notifications (alarms)
class NotificationHelper {
  /// Schedule an alarm notification at the specified [scheduledTime]
  static Future<void> scheduleAlarmNotification(DateTime scheduledTime) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Alarm!',
      'It\'s time to take care of your plant 🌿',
      tz.TZDateTime.from(scheduledTime, tz.local),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'alarm_channel',
          'Alarm Notifications',
          channelDescription: 'Channel for alarm notifications',
          importance: Importance.max,
          priority: Priority.high,
          icon: 'alarm',
          playSound: true,
          sound: RawResourceAndroidNotificationSound(
            'alarm_sound',
          ), // بدون الامتداد
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }
}
