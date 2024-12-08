import 'package:Frontend/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:Frontend/models/card.dart';
import 'package:Frontend/services/cards.dart';

class VCardsProvider extends ChangeNotifier {
  List<VCard> cards = [];

  Future<List<VCard>> getVCards() async {
    // print("getting cards");
    try {
      await AuthProvider().initAuth();
      cards = await DioClient().getVCards();
    } on Exception catch (_) {
      rethrow;
    }
    if (cards.isEmpty) throw("No Cards");
    return cards;
  }

  void createVCard(VCard card) async {
    VCard newVVVCard = await DioClient().createVCard(card: card);
    cards.insert(0, newVVVCard);
    notifyListeners();
  }

  void updateVCard(VCard card) async {
    VCard newVVCard = await DioClient().updateVCard(card: card);
    int index = cards.indexWhere((card) => card.id == newVVCard.id);
    cards[index] = newVVCard;
    notifyListeners();
  }

  void deleteVCard(String cardId) async {
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