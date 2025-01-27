import 'package:get/get.dart';

class BankingController extends GetxController {
  Rx<Banking> banking = Banking.banks.obs;
}

enum Banking {
  banks,
  current,
  overdrafts,
  bankGuarantees,
  demands,
  terms,
  trustReceipts,
  creditLetters,
  cheques,
}
