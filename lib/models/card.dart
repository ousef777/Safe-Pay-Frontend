class VCard {
  String? id;
  String name;
  double? amount;
  bool? used;

  VCard(
      {
        this.id,
        required this.name,
        this.amount,
        this.used = false,
      }
    );

  VCard.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        name = json['name'] as String,
        amount = json['amount'] as double,
        used = json['used'] as bool;
}
