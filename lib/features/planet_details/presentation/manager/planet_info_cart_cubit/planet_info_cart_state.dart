// care_card_state.dart
class CareCardState {
  final bool isExpanded;

  CareCardState({required this.isExpanded});

  CareCardState copyWith({bool? isExpanded}) {
    return CareCardState(isExpanded: isExpanded ?? this.isExpanded);
  }
}
