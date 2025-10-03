import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  String? selectedItemFrom;
  String? selectedItemTransferTo;
  final List<String> itemsFrom = ["Selimut", "Bantal", "Susu", "Telur"];
  final List<String> itemsTransferTo = ["Ayam", "Sapi", "Kambing", "Kelinci"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        toolbarHeight: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        title: HeaderPage(imagePath: Images.imgAdcorp, title: 'Transfer Out'),
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
                  spacing: 76,
                  label: "From",
                  items: itemsFrom,
                  value: selectedItemFrom,
                  itemLabel: (item) => item,
                  onChanged: (val) {
                    setState(() {
                      selectedItemFrom = val;
                    });
                  },
                ),
                SpacerV(value: Dimens.space14),
                CustomDropdown<String>(
                  spacing: 30,
                  label: "Transfer To",
                  items: itemsTransferTo,
                  value: selectedItemTransferTo,
                  itemLabel: (item) => item,
                  onChanged: (val) {
                    setState(() {
                      selectedItemTransferTo = val;
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
