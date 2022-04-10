class User {
  final String id;
  final String firstname;
  final String lastname;
  final String email;

  User(this.id, this.firstname, this.lastname, this.email);

  User.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'] as String,
        firstname = json['firstname'] as String,
        lastname = json['lastname'] as String,
        email = json['email'] as String;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'firstname': firstname,
        'lastname': lastname,
        'email': email
      };
}
