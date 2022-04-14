import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader_app/providers/db_provider.dart';
import 'package:qr_reader_app/providers/ui_provider.dart';
import 'package:qr_reader_app/screens/screens.dart';
import 'package:qr_reader_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever),
          ),
        ],
        elevation: 0,
        title: const Text('Historial'),
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    // TODO Termporal leer db
    // final tempScan = ScanModel(valor: 'https://google.com');
    // DBProvider.db.getScanById(2).then((value) => print(value! .valor));



    switch (currentIndex) {
      case 0:
        return const MapsScreen();
      case 1:
        return const DirectionsScreen();
      default:
        return const MapsScreen();
    }
  }
}
