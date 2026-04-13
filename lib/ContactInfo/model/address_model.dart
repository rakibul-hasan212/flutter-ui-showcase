class Address{
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  const Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode
});

  factory Address.fromJson(Map<String, dynamic> addressJson){
    return Address(
        street: addressJson['street'],
        suite: addressJson['suite'],
        city: addressJson['city'],
        zipcode: addressJson['zipcode']);
  }
}