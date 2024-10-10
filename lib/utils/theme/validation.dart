class PValidator {
  static String? validateEmail(String? value) {
    if(value == null || value.isEmpty){
      return 'Email is required';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'L\'adresse email est invalide';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Le mot de passe est requis.';
    }

    // Check for minimum password length
    if(value.length <6){
      return 'Le mot de passe doit contenir au moins 6 caractères';
    }

    // Check for special characters
    if(!value.contains(RegExp(r'[!@#$%^&*(),.;?":{}|<>]'))){
      return 'Le mot de passe doit comporter au moins un caractère spécial.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Le numéro de téléphone est requis';
    }
    final phoneRegExp = RegExp(r'^\d{8}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Le format du numéro de téléphone n\'est pas pris en compte pour le Bénin';
    }
    return null;
  }


}