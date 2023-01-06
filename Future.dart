void main() {
  print("Start");
  getApi();
  getSecCode();
  getGender();
  print("End");
}

void getApi() async {
  int api = await apiFunciton();
  print(api);
}

Future<int> apiFunciton() {
  return Future.delayed(
    Duration(seconds: 5),
    () => 345,
  );
}

void getSecCode() async {
  int secCode = await getSecFunction();
  print(secCode);
}

Future<int> getSecFunction() {
  return Future.delayed(
    Duration(seconds: 8),
    () {
      return 90;
    },
  );
}

///////////////
void getGender() async {
  bool gender = await getGenderfunction();
  print(gender);
}

Future<bool> getGenderfunction() {
  return Future.delayed(
    Duration(seconds: 12),
    () => true,
  );
}

/// new example

void main() {
  print("Start");
  getData();
  print("End");
}

void getData() async {
  try {
    String data = await middleFunction();
    print(data);
  } catch (error) {
    print("error occord $error");
  }
}

Future<String> middleFunction() {
  return Future.delayed(
    Duration(seconds: 10),
    () => "Welcome back",
  );
}

