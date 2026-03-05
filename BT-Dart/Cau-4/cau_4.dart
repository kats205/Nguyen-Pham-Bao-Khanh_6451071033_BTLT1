import 'dart:io';

void main() {
  print('MSSV: 6451071033');
  stdout.write('Nhập vào một số nguyên: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    int? number = int.tryParse(input);
    if (number != null && number > 0) {
      List<int> divisors = [];
      for (int i = 1; i <= number; i++) {
        if (number % i == 0) {
          divisors.add(i);
        }
      }
      print('Các ước của $number là: $divisors');
    } else {
      print('Lỗi: Vui lòng nhập vào số nguyên dương hợp lệ.');
    }
  } else {
    print('Lỗi: Không có dữ liệu được nhập.');
  }
}
