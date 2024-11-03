import 'dart:ui';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class FinanceScreen extends StatelessWidget {
  final TextEditingController searchboxfield = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  FinanceScreen({super.key});

  void _showAddMoneyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Add Money',
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: amountController,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintText: 'Enter amount to add',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Description (Optional)',
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintText: 'Add a note (e.g., salary, gift)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                'Cancel',
                style: GoogleFonts.poppins(color: Colors.red, fontSize: 16),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Here, you can implement the logic to add money.
                // For example, you can print the amount entered.
                print('Adding amount: ${amountController.text}');
                amountController.clear(); // Clear the input field
                Navigator.of(context).pop(); // Close the dialog
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromRGBO(37, 150, 190, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text(
                'Add Money',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0,
          flexibleSpace: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FluentIcons.trophy_16_regular,
                    color: Colors.white,
                    size: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 300,
                        height: 45,
                        color: Colors.white.withOpacity(0.2),
                        child: TextField(
                          controller: searchboxfield,
                          cursorColor: Colors.black,
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear, color: Colors.white),
                              onPressed: () {
                                searchboxfield.clear();
                              },
                            ),
                            hintText: "Search East Africa",
                            hintStyle: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Ionicons.notifications_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: const Color.fromRGBO(37, 150, 190, 1),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                color: const Color.fromRGBO(37, 150, 190, 1),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'US Dollar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                    Text(
                      '\$20,000',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontFamily: GoogleFonts.monofett().fontFamily),
                    ),
                    ElevatedButton.icon(
                      onPressed: () => _showAddMoneyDialog(context),
                      icon: const Icon(FluentIcons.wallet_20_regular),
                      label: Text('Add Money', style: GoogleFonts.poppins()),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(37, 150, 190, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: const BorderSide(color: Colors.white, width: 2.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(
                      top: 60,
                      right: 20,
                      left: 20), // Add top padding to avoid overlap
                  children: [
                    const SizedBox(height: 20),
                    Text('Recent Transactions',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: const Icon(Ionicons.cart_outline),
                        title: Text('Spending', style: GoogleFonts.poppins()),
                        trailing:
                            const Text('-\$500', style: TextStyle(color: Colors.red)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: const Icon(FluentIcons.money_16_regular),
                        title: Text('Income', style: GoogleFonts.poppins()),
                        trailing: const Text('\$3000',
                            style: TextStyle(color: Colors.green)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: const Icon(Ionicons.receipt_outline),
                        title: Text('Bills', style: GoogleFonts.poppins()),
                        trailing: const Text('-\$800',
                            style: TextStyle(color: Colors.red)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: const Icon(Ionicons.wallet_outline),
                        title: Text('Savings', style: GoogleFonts.poppins()),
                        trailing: const Text('\$1000',
                            style: TextStyle(color: Colors.orange)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 80,
                transformAlignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FluentIcons.arrow_circle_up_12_filled,
                              color: Color.fromRGBO(37, 150, 190, 1),
                            ),
                            Text('Send'),
                          ],
                        ),
                        Text('|'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FluentIcons.arrow_circle_down_12_filled,
                              color: Color.fromRGBO(37, 150, 190, 1),
                            ),
                            Text('Request'),
                          ],
                        ),
                        Text('|'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FluentIcons.credit_card_person_20_filled,
                              color: Color.fromRGBO(37, 150, 190, 1),
                            ),
                            Text('Bank'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
