import 'package:drivepay/core/constants/enums.dart';
import 'package:drivepay/core/utilities/regex.dart';

class Validator {
  static String? isEmailValid(String? value) {
    if (value != null && value.isEmpty) {
      return "required*";
    } else if (!RegexToolkit.emailId.hasMatch(value!)) {
      return "Enter a valid email";
    }
    return null;
  }

  static String? isPasswordValid(String? value) {
    if (value != null && value.isEmpty) {
      return "required*";
    } else if (!RegexToolkit.passwordModerate.hasMatch(value!)) {
      return "password is too weak,should contain atleast\n a number ,special character and be 8 characters long";
    }
    return null;
  }

  static String? fullName(String? value) {
    if (value != null && value.isEmpty) {
      return "required*";
    } else if (value!.length <= 5) {
      return "Enter your full name";
    }
    return null;
  }

  static String? carbrands(String? value) {
    final brands = CarBrand.values.map((e) => e.toString()).toList();
    if (value != null && value.isEmpty) {
      return "required*";
    } else if (!brands.contains(value)) {
      return "Enter a valid brand";
    }
    return null;
  }

  static String? licenseplate(String? value) {
    if (value != null && value.isEmpty) {
      return "required*";
    } else if (value!.length < 7) {
      return "License plate must be 7 characters ";
    }
    return null;
  }
}
