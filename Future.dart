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
