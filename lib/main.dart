import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<CarrotItem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(CarrotItem(title: '응원봉 팔아요', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요2', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요3', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요4', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요5', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요6', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요7', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요8', addr: '성남시 중원구', price: 10000));
    items.add(CarrotItem(title: '응원봉 팔아요9', addr: '성남시 중원구', price: 10000));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Malob market'),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [for (var item in items) item],
          ),
        ),
      ),
    );
  }
}

class CarrotItem extends StatelessWidget {
  String title, addr;
  int price;
  CarrotItem({
    required this.title,
    required this.addr,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('images/NewJeans.jpg'))),
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                // 제목 따로 줄
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  addr,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      decoration: TextDecoration.underline),
                ),
                Text('$price'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Icon(Icons.heart_broken), Text('12')],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
