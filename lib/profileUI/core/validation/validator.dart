typedef Validation = String? Function(String?);

String? emailValidation(String? value) {
  if(value == null || value.isEmpty){
    return "Give the mail before login";
  }
  if(!value.contains("@gmail.com")){
    return "Enter the accurate mail with @gmail.com";
  }
  return null;
}

String? passwordValidation(String? value){
  if(value ==null || value.isEmpty){
    return "Give your password before login";
  }
  if(value.length < 6){
    return "Password should be gatter then 6 Charecter";
  }
  return null;
}


String? confirmPasswordValidation(String? value, String? password){
  if(value == null || value.isEmpty){
    return "Give your password before login";
  }
  if(value != password){
    return "Password should be same as above";
  }
  return null;
}