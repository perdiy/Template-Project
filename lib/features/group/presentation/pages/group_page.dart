import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  String? selectedItem;

  final List<String> items = ["Selimut", "Bantal", "Susu", "Telur"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        toolbarHeight: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        title: HeaderPage(imagePath: Images.imgAdcorp, title: 'Group Search'),
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
                  spacing: 30,
                  label: "Item",
                  items: items,
                  value: selectedItem,
                  itemLabel: (item) => item,
                  onChanged: (val) {
                    setState(() {
                      selectedItem = val;
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
                  showTotal: true,
                  tottalread: 12,
                  itemName: 'Read',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
