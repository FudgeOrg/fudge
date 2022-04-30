class Ingredient {
  final String id;
  final String name;
  final String amount;
  final String instruction;

  Ingredient(this.id, this.name, this.amount, this.instruction);

  Ingredient.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        amount = json['amount'],
        instruction = json['instruction'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'amount': amount, 'instruction': instruction};
}
