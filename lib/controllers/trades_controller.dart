import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TradesController extends GetxController {
  RxBool isPurchase = true.obs,
      gettingPurchases = true.obs,
      gettingSales = true.obs;

  getPurchases() {
    gettingPurchases(true);
    try {} catch (e) {
      debugPrint('## error getting purchases: $e');
    } finally {
      gettingPurchases(false);
    }
  }

  getPurchasesGraph() {
    gettingPurchases(true);
    try {} catch (e) {
      debugPrint('## error getting purchases graph: $e');
    } finally {
      gettingPurchases(false);
    }
  }

  getPurchasesTable() {
    gettingPurchases(true);
    try {} catch (e) {
      debugPrint('## error getting purchases table: $e');
    } finally {
      gettingPurchases(false);
    }
  }

  getSales() {
    gettingSales(true);
    try {} catch (e) {
      debugPrint('## error getting sales: $e');
    } finally {
      gettingSales(false);
    }
  }

  getSalesGraph() {
    gettingSales(true);
    try {} catch (e) {
      debugPrint('## error getting sales graph: $e');
    } finally {
      gettingSales(false);
    }
  }

  getSalesTable() {
    gettingSales(true);
    try {} catch (e) {
      debugPrint('## error getting sales table: $e');
    } finally {
      gettingSales(false);
    }
  }
}
