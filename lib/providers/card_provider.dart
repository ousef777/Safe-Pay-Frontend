import 'package:flutter/material.dart';
import 'package:Frontend/models/card.dart';
import 'package:Frontend/services/cards.dart';

class VCardsProvider extends ChangeNotifier {
  List<VCard> cards = [];

  Future<List<VCard>> getVCards() async {
    // print("getting cards");
    cards = await DioClient().getVCards();
    return cards;
  }

  void createVVVCard(VCard card) async {
    VCard newVVVCard = await DioClient().createVCard(card: card);
    cards.insert(0, newVVVCard);
    notifyListeners();
  }

  void updateVVCard(VCard card) async {
    VCard newVVCard = await DioClient().updateVCard(card: card);
    int index = cards.indexWhere((card) => card.id == newVVCard.id);
    cards[index] = newVVCard;
    notifyListeners();
  }

  void deleteVVCard(int cardId) async {
    await DioClient().deleteVCard(cardId: cardId);
    cards.removeWhere((card) => card.id == cardId);
    notifyListeners();
  }
}

void main() {
  VCardsProvider provider = VCardsProvider();
  provider.getVCards();
  print(provider.cards);
}