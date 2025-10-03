import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class BulkPage extends StatefulWidget {
  const BulkPage({super.key});

  @override
  State<BulkPage> createState() => _BulkPageState();
}

class _BulkPageState extends State<BulkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        toolbarHeight: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        title: HeaderPage(imagePath: Images.imgAdcorp, title: 'Bulk Counting'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space22),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemQtyTable(
                  items: [
                    ItemData(name: "Susu", qty: 5),
                    ItemData(name: "Telur", qty: 12),
                    ItemData(name: "Selimut", qty: 7),
                    ItemData(name: "Bantal", qty: 15),
                  ],
                  onClear: () {},
                  clearBtn: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
