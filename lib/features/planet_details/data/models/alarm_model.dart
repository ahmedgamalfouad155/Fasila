class AlarmModel {
  final String id; 
  final String title;
  final String icon; 
  final int hour;
  final int minute; 
  final String day;
  final bool isActive; 

  AlarmModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.hour,
    required this.minute,
    required this.day,
    required this.isActive,
  });

    AlarmModel copyWith({
    String? id,
    String? title,
    String? icon,
    int? hour,
    int? minute,
    String? day,
    bool? isActive,
  }) {  
    return AlarmModel(  
      id: id ?? this.id,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
      day: day ?? this.day,
      isActive: isActive ?? this.isActive,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'icon': icon,
      'hour': hour,
      'minute': minute,
      'day': day,
      'isActive': isActive,
    };
  } 
  factory AlarmModel.fromMap(Map<String, dynamic> map ,String documentId) {
    return AlarmModel(
      id: documentId,
      title: map['title'] ?? '',
      icon: map['icon'] ?? '',
      hour: map['hour'] ?? 0,
      minute: map['minute'] ?? 0,
      day: map['day'] ?? '',
      isActive: map['isActive'] ?? false,
    );
  }
}
