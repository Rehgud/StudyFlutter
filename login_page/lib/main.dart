import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true, // title을 가운데 정렬한다.
        ), // app bar 위젯임
        body: SingleChildScrollView( // 키보드를 열었을 때 화면 스크롤을 가능하게 해줌
          child: Padding(
            padding: const EdgeInsets.all(16.0), // 원하는 padding 값 주기
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.network(
                      "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                  width: 80),
                ),
                
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),

                TextField(
                  obscureText: true, // 입력되는 값들이 *로 가려짐
                  decoration: InputDecoration(labelText: 'PWD'),
                ),

                Container(
                  width: double.infinity, // 기종 상관없이 부모가 주는 가장 큰 값을 사용 = double.infinity
                  margin: const EdgeInsets.only(top : 16), //
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Login')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}