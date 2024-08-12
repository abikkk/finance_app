import 'package:flutter/material.dart';

class BankingScreen extends StatefulWidget {
  const BankingScreen({super.key});

  @override
  State<BankingScreen> createState() => _BankingScreenState();
}

class _BankingScreenState extends State<BankingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Banking'),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                // current ac
                Card(
                    elevation: 5,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Current AC',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'AC holder name:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '<AC holder name>',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'AC number:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '12121212121212',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

                // overdraft ac
                Card(
                    elevation: 5,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Overdraft AC',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'AC holder name:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '<AC holder name>',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'AC number:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '12121212121212',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

                // demand loan
                Card(
                    elevation: 5,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Demand Load',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Date of dispersant',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '--/--/----',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Repayment Date:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '--/--/----',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Repayment Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Repayment Amount Interest:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

                // tr loan
                Card(
                    elevation: 5,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'T/R Loan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Date of dispersant',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '--/--/----',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Due Date:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '--/--/----',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Due Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Amount Interest:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

                // lc details
                Card(
                    elevation: 5,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'L/C Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'LC number',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '<LC number>',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Beneficiary Name',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '<Beneficiary Name>',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Margin:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '99',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Maturity Date:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '--/--/----',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

                // bg details
                Card(
                    elevation: 5,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'B/G Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'B/G number',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '<B/G number>',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Beneficiary Name',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '<Beneficiary Name>',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Margin:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '99',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Maturity Date:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '--/--/----',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

                // cheque details
                Card(
                    elevation: 5,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Cheque Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Maturity Date:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '--/--/----',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Bank',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '<Bank>',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Cheque number',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '<Cheque number>',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Drawer/Drawee',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Amount:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                'Rs. 99999',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Due Days:',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                              Text(
                                '9',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
