import 'package:flutter/material.dart';
import 'package:flutter_application_carrot/detail_page.dart';
import 'carrot_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<CarrotItem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(CarrotItem(title: '응원봉 팔아요', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요2', addr: '성남시 중원구', price: 20000));
    items.add(CarrotItem(title: '응원봉 팔아요3', addr: '성남시 중원구', price: 30000));
    items.add(CarrotItem(title: '응원봉 팔아요4', addr: '성남시 중원구', price: 40000));
    items.add(CarrotItem(title: '응원봉 팔아요5', addr: '성남시 중원구', price: 50000));
    items.add(CarrotItem(title: '응원봉 팔아요6', addr: '성남시 중원구', price: 60000));
    items.add(CarrotItem(title: '응원봉 팔아요7', addr: '성남시 중원구', price: 70000));
    items.add(CarrotItem(title: '응원봉 팔아요8', addr: '성남시 중원구', price: 80000));
    items.add(CarrotItem(title: '응원봉 팔아요9', addr: '성남시 중원구', price: 90000));

    return MaterialApp(
      home: HomePage(items: items),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<CarrotItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malob market'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in items)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(price: item.price),
                        ));
                  },
                  child: item) // 내 행동을 인식 한다.
          ],
        ),
      ),
    );
  }
}
