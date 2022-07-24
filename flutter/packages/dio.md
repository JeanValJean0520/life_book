# Dio 통신

결론부터 말하자면 Dio와 Http의 가장 큰 차이는 Dio는 이미 decode 처리를 해서 데이터를 출력한다는 것이다.

```dart
try{
    var responseWithHttp = await http.get ("$~~~~~");

    final items = json.decode(responseWithHttp.body).cast<Map<String, dynamic>>();

    List<Student> students = items.map<Student>((json){
        return Student.fromJson(json);
    }).toList();
    return students;
} catch(e){
    print(e);
}
```

```dart
try{
    var responseWithDio = await Dio.get ("$~~~~~");

    List<Student> students = (reponseWithDio.data).map<Student>((json){
        return Student.fromJson(json);
    }).toList();
    return students;
} catch(e){
    print(e);
}
```