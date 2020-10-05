import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_counter_provider/model/counter_model.dart';
import 'package:multi_counter_provider/widget/container_widget.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<CounterModel>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        body: Column(
          children: [
            ChangeNotifierProvider<CounterModel>(
              create: (context) => CounterModel(),
              child: Expanded(
                child: Consumer<CounterModel>(
                  builder: (context, count, __) => customContainer(
                      text: count.getCount.toString(),
                      decrement: () => count.decrement(),
                      increment: () => count.increment()),
                ),
              ),
            ),
            ChangeNotifierProvider<CounterModel>(
              create: (context) => CounterModel(),
              child: Expanded(
                child: Consumer<CounterModel>(
                  builder: (context, count, __) => customContainer(
                      text: count.getCount.toString(),
                      decrement: () => count.decrement(),
                      increment: () => count.increment()),
                ),
              ),
            ),
            ChangeNotifierProvider<CounterModel>(
              create: (context) => CounterModel(),
              child: Expanded(
                child: Consumer<CounterModel>(
                  builder: (context, count, __) => customContainer(
                      text: count.getCount.toString(),
                      decrement: () => count.decrement(),
                      increment: () => count.increment()),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Re-Start'),
          icon: Icon(Icons.refresh),
          onPressed: data.reset,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
