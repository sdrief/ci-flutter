import 'package:flutter/material.dart';
import 'package:flutter_ci_demo/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

void main() {
  //IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Counter increments when tapping the button', (tester) async {
    app.main();
    await tester.pumpAndSettle();

    // Vérifie que le compteur démarre à 0
    expect(find.text('0'), findsOneWidget);

    // Clique sur le bouton "+"
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    // Vérifie que le compteur passe à 1
    expect(find.text('1'), findsOneWidget);
  });
}
