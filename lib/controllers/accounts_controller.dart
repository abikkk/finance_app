import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountsController extends GetxController {
  RxBool isReceivables = true.obs,
      gettingReceivables = true.obs,
      gettingPayables = true.obs;

  getReceivables() {
    gettingReceivables(true);
    try {} catch (e) {
      debugPrint('## error getting receivables: $e');
    } finally {
      gettingReceivables(false);
    }
  }

  getReceivablesGraph() {
    gettingReceivables(true);
    try {} catch (e) {
      debugPrint('## error getting receivables graph: $e');
    } finally {
      gettingReceivables(false);
    }
  }

  getReceivablesTable() {
    gettingReceivables(true);
    try {} catch (e) {
      debugPrint('## error getting receivables table: $e');
    } finally {
      gettingReceivables(false);
    }
  }

  getPayables() {
    gettingPayables(true);
    try {} catch (e) {
      debugPrint('## error getting payables: $e');
    } finally {
      gettingPayables(false);
    }
  }

  getPayablesGraph() {
    gettingPayables(true);
    try {} catch (e) {
      debugPrint('## error getting payables graph: $e');
    } finally {
      gettingPayables(false);
    }
  }

  getPayablesTable() {
    gettingPayables(true);
    try {} catch (e) {
      debugPrint('## error getting payables table: $e');
    } finally {
      gettingPayables(false);
    }
  }
}
