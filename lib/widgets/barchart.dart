import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final String label;
  final double spending;
  final double percentage;

  BarChart(this.label, this.spending, this.percentage);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          children: <Widget>[
            Container(
                height: constraints.maxHeight * 0.15,
                child:
                    FittedBox(child: Text('\$${spending.toStringAsFixed(0)}'))),
            SizedBox(
              height:constraints.maxHeight * 0.05,
            ),
            Container(
              height: constraints.maxHeight * 0.6,
              width: 10,
              child: Stack(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(220, 220, 220, 1)),
                ),
                FractionallySizedBox(
                    heightFactor: percentage,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ))
              ]),
            ),
            SizedBox(height: constraints.maxHeight * 0.05,),
            Container(height:constraints.maxHeight * 0.15,child: Text(label))
          ],
        );
      },
    );
  }
}
