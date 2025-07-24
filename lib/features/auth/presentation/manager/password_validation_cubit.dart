import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordValidationState {
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;

  bool get isValid => hasUpperCase && hasLowerCase && hasNumber && hasSpecialChar && hasMinLength;

  const PasswordValidationState({
    this.hasUpperCase = false,
    this.hasLowerCase = false,
    this.hasNumber = false,
    this.hasSpecialChar = false,
    this.hasMinLength = false,
  });

  PasswordValidationState copyWith({
    bool? hasUpperCase,
    bool? hasLowerCase,
    bool? hasNumber,
    bool? hasSpecialChar,
    bool? hasMinLength,
  }) {
    return PasswordValidationState(
      hasUpperCase: hasUpperCase ?? this.hasUpperCase,
      hasLowerCase: hasLowerCase ?? this.hasLowerCase,
      hasNumber: hasNumber ?? this.hasNumber,
      hasSpecialChar: hasSpecialChar ?? this.hasSpecialChar,
      hasMinLength: hasMinLength ?? this.hasMinLength,
    );
  }
}

class PasswordValidationCubit extends Cubit<PasswordValidationState> {
  PasswordValidationCubit() : super(const PasswordValidationState());

  void validate(String password) {
    emit(
      PasswordValidationState(
        hasUpperCase: password.contains(RegExp(r'[A-Z]')),
        hasLowerCase: password.contains(RegExp(r'[a-z]')),
        hasNumber: password.contains(RegExp(r'[0-9]')),
        hasSpecialChar: password.contains(RegExp(r'[!@#\$%^&*()_\-+=,.?/]')),
        hasMinLength: password.length >= 8,
      ),
    );
  }
}
