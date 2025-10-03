import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class ReceivingPage extends StatefulWidget {
  const ReceivingPage({super.key});

  @override
  State<ReceivingPage> createState() => _ReceivingPageState();
}

class _ReceivingPageState extends State<ReceivingPage> {
  String? selectedItemLoaction;
  String? selectedItemReceive;
  final List<String> itemsLocation = ["Selimut", "Bantal", "Susu", "Telur"];
  final List<String> itemsReceive = ["Ayam", "Sapi", "Kambing", "Kelinci"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        toolbarHeight: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        title: HeaderPage(imagePath: Images.imgAdcorp, title: 'Receiving'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space22),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDropdown<String>(
                  spacing: 40,
                  label: "My Location",
                  items: itemsLocation,
                  value: selectedItemLoaction,
                  itemLabel: (item) => item,
                  onChanged: (val) {
                    setState(() {
                      selectedItemLoaction = val;
                    });
                  },
                ),
                SpacerV(value: Dimens.space14),
                CustomDropdown<String>(
                  spacing: 30,
                  label: "Receive From",
                  items: itemsReceive,
                  value: selectedItemReceive,
                  itemLabel: (item) => item,
                  onChanged: (val) {
                    setState(() {
                      selectedItemReceive = val;
                    });
                  },
                ),
                SpacerV(value: Dimens.space16),
                ItemQtyTable(
                  items: [
                    ItemData(name: "Susu", qty: 5),
                    ItemData(name: "Telur", qty: 12),
                    ItemData(name: "Selimut", qty: 7),
                    ItemData(name: "Bantal", qty: 15),
                  ],
                  onClear: () {},
                  clearBtn: true,
                  submitBtn: true,
                  onSubmit: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
