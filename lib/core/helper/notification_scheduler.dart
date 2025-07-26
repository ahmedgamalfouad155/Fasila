import 'package:fasila/core/helper/notification_initializer.dart';
import 'package:fasila/features/planet_details/data/models/alarm_model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationHelper {
  static Future<void> scheduleAlarmNotification({
    required AlarmModel alarmModel,
  }) async {
    final now = DateTime.now();

    // 1. تحويل day إلى رقم الـ weekday
    final Map<String, int> dayToWeekday = {
      'Mon': 1,
      'Tue': 2,
      'Wed': 3,
      'Thu': 4,
      'Fri': 5,
      'Sat': 6,
      'Sun': 7,
    };

    int targetWeekday = dayToWeekday[alarmModel.day]!;

    int daysToAdd = (targetWeekday - now.weekday + 7) % 7;

    DateTime targetDate = DateTime(
      now.year,
      now.month,
      now.day + daysToAdd,
      alarmModel.hour,
      alarmModel.minute,
    );

    if (targetDate.isBefore(now)) {
      targetDate = targetDate.add(const Duration(days: 7));
    }

    await flutterLocalNotificationsPlugin.zonedSchedule(
      alarmModel.hashCode,
      'Alarm!',
      '${alarmModel.title} 🌿',
      tz.TZDateTime.from(targetDate, tz.local),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'alarm_channel',
          'Alarm Notifications',
          channelDescription: 'Channel for alarm notifications',
          importance: Importance.max,
          priority: Priority.high,
          icon: 'alarm',
          playSound: true,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: null,
    );
  }

  static Future<void> cancelAlarmNotification(AlarmModel alarmModel) async {
  await flutterLocalNotificationsPlugin.cancel(alarmModel.hashCode);
}

}
