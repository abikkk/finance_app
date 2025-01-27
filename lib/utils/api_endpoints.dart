class ApiEndpoints {
  static String baseURL = 'https://ntn.gyancommunity.com';

  // BANKING
  static String bankingUrl = '$baseURL/api/banking'; // banking base URL
  // static String bankUrl = '$bankingUrl/bank-guarantees'; // bank
  static String currentUrl = '$bankingUrl/currents'; // current
  static String overdraftsUrl = '$bankingUrl/overdrafts'; // overdrafts
  static String bankGuaranteesUrl =
      '$bankingUrl/bank-guarantees'; // bank guarantee
  static String demandsUrl = '$bankingUrl/demands'; // demands
  static String termsUrl = '$bankingUrl/terms'; // terms
  static String trustReceiptsUrl =
      '$bankingUrl/trust-receipts'; // trust receipts
  static String creditLettersUrl =
      '$bankingUrl/credit-letters'; // credit letters
  static String chequesUrl = '$bankingUrl/cheques'; // cheques

  // STOCKS
  static String inventoriesUrl = '$baseURL/api/inventories'; // inventories URL

// TRADES
  static String purchasesUrl = '$baseURL/api/purchases'; // purchases URL
  static String salesUrl = '$baseURL/api/sales'; // sales URL

// ACCOUNTS
  static String receivableUrl = '$baseURL/api/receivables'; // purchases URL
  static String payablesUrl = '$baseURL/api/payables'; // sales URL
}
