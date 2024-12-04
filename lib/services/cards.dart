import 'package:dio/dio.dart';
import 'package:Frontend/models/card.dart';
import 'package:Frontend/services/client.dart';

class DioClient {

  Future<List<VCard>> getVCards() async {
    List<VCard> cards = [];
    try {
      Response response = await Client.dio.get('/cards');
      // print((response.data as List));
      cards = (response.data as List).map((card) {
        return VCard.fromJson(card);
      }).toList();
    } on DioException catch (error) {
      print(error);
    }
    return cards;
  }

  Future<VCard> createVCard({required VCard card}) async {
    late VCard retrievedVCard;
    try {
      FormData data = FormData.fromMap({
        "name": card.name,
        "amount": card.amount,
      });
      Response response = await Client.dio.post('/cards', data: data);
      retrievedVCard = VCard.fromJson(response.data);
    } on DioException catch (error) {
      print(error);
    }
    return retrievedVCard;
  }

  Future<VCard> updateVCard({required VCard card}) async {
    late VCard retrievedVCard;
    try {
      FormData data = FormData.fromMap({
        "name": card.name,
        "amount": card.amount,
      });

      Response response =
          await Client.dio.put('/cards/${card.id}', data: data);
      retrievedVCard = VCard.fromJson(response.data);
    } on DioException catch (error) {
      print(error);
    }
    return retrievedVCard;
  }

  Future<void> deleteVCard({required int cardId}) async {
    try {
      await Client.dio.delete('/cards/$cardId');
    } on DioException catch (error) {
      print(error);
    }
  }
}