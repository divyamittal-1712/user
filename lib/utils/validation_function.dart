/// Text Field Validation
///......................
/// First Name Validation

String? validateFirstName( value) {
  if (value == null) {
    return 'Please enter your  name';
  }

  String firstName = value.trim(); // Trim leading and trailing whitespaces

  if (firstName.isEmpty) {
    return 'First name cannot be empty';
  } else if (firstName.length < 2) {
    return 'First name must be at least 2 characters';
  } else if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(firstName)) {
    return 'First name can only contain characters';
  } else {
    return null;
  }
}

/// Last Name Validation

String? validateLastName(value) {
  if (value == null) {
    return 'Please enter your last name';
  }

  String lastName = value.trim(); // Trim leading and trailing whitespaces

  if (lastName.isEmpty) {
    return 'Last name cannot be empty';
  } else if (lastName.length < 2) {
    return 'Last name must be at least 2 characters';
  } else if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(lastName)) {
    return 'Last name can only contain characters';
  } else {
    return null;
  }
}

/// DOB Validation

String? validateDateOfBirth(String? value) {
  String dateOfBirth = value!;
  if (dateOfBirth.isEmpty) {
    return 'Date of birth cannot be empty';
  } else {
    return null;
  }
}

/// Email Validation

String? validateEmail(value) {
  String email = value!;
  if (email.isEmpty) {
    return 'Email cannot be empty';
  } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
      .hasMatch(email)) {
    return 'Enter a valid email address';
  } else {
    return null;
  }
}

/// Number Validation

String? validateMobileNumber(value) {
  String mobileNumber = value!;
  if (mobileNumber.isEmpty) {
    return 'Mobile number cannot be empty';
  } else if (!RegExp(r'^\d{10}$').hasMatch(mobileNumber)) {
    return 'Enter a valid 10-digit mobile number';
  } else {
    return null;
  }
}

/// Address Validation

String? validateAddress(String? value) {
  String address = value!;
  if (address.isEmpty) {
    return 'Address cannot be empty';
  } else if (address.length < 5) {
    return 'Address must be at least 5 characters';
  } else {
    return null;
  }
}

/// Address Validation

String? validateMessage(String? value) {
  String message = value!;
  if (message.isEmpty) {
    return 'Message cannot empty';
  } else if (message.length < 5) {
    return 'Message must be at least 15 characters';
  } else {
    return null;
  }
}

/// Pin Code Validation

String? validatePinCode(value) {
  if (value == null || value.isEmpty) {
    return 'Country code is required';
  } else if (value.length < 6) {
    return 'Country code must be at least 6 digits';
  }
  return null;
}


/// Name Validation

String? validateName(String? name) {
  String lastName = name!;
  if (lastName.isEmpty) {
    return 'Name cannot be empty';
  } else if (lastName.length < 5) {
    return 'Name must be at least 5 characters';
  } else {
    return null;
  }
}

/// Full Name Validation

String? validateFullNames(String? fullName) {
  String lastName = fullName!;
  if (lastName.isEmpty) {
    return 'Full name cannot be empty';
  } else if (lastName.length < 5) {
    return 'full name must be at least 5 characters';
  } else {
    return null;
  }
}

/// Full Name Validation

String? validateInstituteNames(String? fullName) {
  String lastName = fullName!;
  if (lastName.isEmpty) {
    return 'Institute name cannot be empty';
  } else if (lastName.length < 5) {
    return 'Institute name must be at least 5 characters';
  } else {
    return null;
  }
}
/// Full Name Validation

String? validateJT(String? fullName) {
  String lastName = fullName!;
  if (lastName.isEmpty) {
    return 'Job Title cannot be empty';
  } else if (lastName.length < 5) {
    return 'Job title must be at least 5 characters';
  } else {
    return null;
  }
}
/// Full Name Validation

String? validateRFL(String? fullName) {
  String lastName = fullName!;
  if (lastName.isEmpty) {
    return 'cannot be empty';
  } else if (lastName.length < 5) {
    return 'must be at least 15 characters';
  } else {
    return null;
  }
}
/// Full Name Validation

String? validateCN(String? fullName) {
  String lastName = fullName!;
  if (lastName.isEmpty) {
    return 'Company name cannot be empty';
  } else if (lastName.length < 5) {
    return 'Company name must be at least 5 characters';
  } else {
    return null;
  }
}

/// Full Name Validation

String? validateNC(String? value) {
  String lastName = value!;
  if (lastName.isEmpty) {
    return 'Nursing Council cannot be empty';
  }else {
    return null;
  }
}

bool isAlphabetic(String input) {
  // This function checks if a string contains only alphabetic characters
  final alphabeticRegex = RegExp(r'^[a-zA-Z]+$');
  return alphabeticRegex.hasMatch(input);
}


/// profession validation
String? validateProfession(value) {
  if (value == null || value.isEmpty) {
    return 'Profession cannot be empty';
  } else if (value.length < 3) {
    return 'Profession must be at least 3 characters';
  } else if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(value)) {
    return 'Profession can only contain letters and spaces';
  } else {
    return null; // Valid profession
  }
}

String? validatePassword(value) {
  if (value == null || value.isEmpty) {
    return 'Password cannot be empty';
  } else if (value.length < 8) {
    return 'Password must be at least 8 characters';
  } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).*$').hasMatch(value)) {
    return 'Password must contain at least one uppercase letter, one lowercase letter, and one digit';
  } else {
    return null; // Valid password
  }
}