# 📌 Flutter Navigator로 화면 이동 및 데이터 전달하기

> 🗓️ 작성일: 2025-04-14  
> 📂 카테고리: Flutter

---

## 🧠 학습 개요

- Flutter에서 페이지 이동 시 데이터 전달 방법 학습  
- `Navigator.pushNamed`와 `arguments`를 활용한 라우팅 방식 이해  
- 이전 페이지로 데이터 전달 (`pop`)하는 방법 실습

---

## 📌 핵심 개념 정리

- `Navigator.pushNamed`: 등록된 라우트 이름을 사용하여 이동  
- `arguments`: 페이지 전환 시 데이터를 전달할 수 있는 매개변수  
- `ModalRoute.of(context)?.settings.arguments`: 전달된 데이터를 수신하는 방법  
- `Navigator.pop(context, result)`: 이전 페이지로 돌아가며 결과값 전달

---

## 💡 주요 코드 & 예제
```dart
// main.dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}
```
```dart
// first_page.dart
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FirstPage')),
      body: Container(color: Colors.red),
      floatingActionButton: ElevatedButton(
        onPressed: () async {
          final person = Person('홍길동', 20);
          var result = await Navigator.pushNamed(
            context,
            '/second',
            arguments: person,
          );
          print(result); // 결과 출력
        },
        child: Text('다음 페이지로'),
      ),
    );
  }
}
```
```dart
// second_page.dart
class SecondPage extends StatelessWidget {
  Person? person;

  SecondPage({this.person});

  @override
  Widget build(BuildContext context) {
    person = ModalRoute.of(context)?.settings.arguments as Person;

    return Scaffold(
      appBar: AppBar(title: Text('SecondPage')),
      body: Container(
        color: Colors.green,
        child: Text('${person?.name}, ${person?.age}'),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context, '잘 전달됨');
        },
        child: Text('이전 페이지로'),
      ),
    );
  }
}
```
---

## 🧩 시행착오 / 오류 메모

- 생성자에서 `person`을 받았지만 `ModalRoute`로도 데이터를 받으려 해서 혼란이 생김  
- `arguments`는 `build()` 내에서 안전하게 꺼내 사용하는 것이 바람직함  
- `pushNamed` 사용 시 `routes` 등록을 하지 않으면 에러 발생

---

## 🔁 다시 본다면?

- `arguments` 전달 방식은 명시적으로 데이터를 전달하므로 코드 가독성 향상  
- 상태를 넘길 일이 많다면 `StatefulWidget` 또는 상태관리 패턴 적용 고려  
- `Navigator.pushReplacementNamed`를 사용하면 이전 페이지를 제거하면서 이동 가능

---

## 📚 참고 자료

- [Navigator 공식 문서](https://api.flutter.dev/flutter/widgets/Navigator-class.html)  
- [Flutter Route Management](https://docs.flutter.dev/ui/navigation)

---
