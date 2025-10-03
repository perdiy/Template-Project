import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/dashboard/presentation/widgets/widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        toolbarHeight: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        title: HeaderPage(imagePath: Images.imgAdcorp, title: 'Dashboard'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space22),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpacerV(value: Dimens.space2),
                CardStockLine(stock: '1245', onTap: () {}),
                SpacerV(value: Dimens.space20),
                const LinenStockChart(
                  locations: [
                    "Warehouse",
                    "Melati",
                    "Fatmawati",
                    "Teratai",
                    "Bougenville",
                    "Cempaka",
                  ],
                  stocks: [300, 186, 237, 73, 209, 214],
                  percentageChange: 5.2,
                  subtitle: "Showing stock linen at all locations",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
