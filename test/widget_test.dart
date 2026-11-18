import 'package:aquafarm_pro/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home screen opens and can move to nursery', (tester) async {
    await tester.pumpWidget(const AquaFarmApp());
    await tester.pump();
    expect(find.text('AquaFarm Pro'), findsWidgets);
    expect(find.text('09:41'), findsNothing);
    expect(find.text('Explore Cultivation'), findsOneWidget);
    expect(find.textContaining('हिंदी'), findsNothing);

    await tester.tap(find.text('Fish & Nursery'));
    await tester.pump();
    expect(find.text('Species & Nursery'), findsOneWidget);
    expect(find.textContaining('Total Fish available'), findsNothing);
    expect(find.textContaining('Farmer-reported'), findsNothing);
    expect(find.textContaining('50,000'), findsNothing);

    await tester.scrollUntilVisible(find.textContaining('8–12 cm'), 400);
    expect(find.textContaining('8–12 cm'), findsWidgets);

    await tester.tap(find.text('Harvest & Records'));
    await tester.pump();
    expect(find.text('Healthy Fish. Profitable Harvest.'), findsOneWidget);
    expect(find.text('Farm figures'), findsNothing);
    expect(find.text('Farm records'), findsNothing);
    expect(find.text('Growth monitoring'), findsNothing);
    expect(find.text('Farmer-reported harvest weight'), findsNothing);
    expect(find.text('Farmer-reported price'), findsNothing);
  });
}
