class Company{
  final String name;
  const Company({required this.name});

  factory Company.fromJson(Map<String, dynamic> companyJson){
    return Company(name: companyJson['name']);
  }
}