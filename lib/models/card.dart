
class VCard {
  String? id;
  String name;
  int cardNumber;
  String expiryDate;
  int cvv;
  // double? amount;
  bool isExpired;
  // List? transactions;

  VCard(
      {
        this.id,
        required this.name,
        required this.cardNumber,
        required this.expiryDate,
        required this.cvv,
        // this.amount,
        this.isExpired = false,
        // this.transactions,
      }
    );

  VCard.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        name = json['name'] as String,
        cardNumber = json['cardNumber'] as int,
        expiryDate = json['expiryDate'] as String,
        cvv = json['cvv'] as int,
        // amount = json['amount'] as double,
        isExpired = json['isExpired'] as bool;
        // transactions = json['transactions'] as List;
}
