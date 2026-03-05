import 'dart:io';
import 'dart:math';

void main() {
  print('MSSV: 6451071033');
  stdout.write('Nhập vào một số nguyên để kiểm tra: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    int? n = int.tryParse(input);
    if (n != null) {
      if (isPrime(n)) {
        print('Kết quả: $n là số nguyên tố.');
      } else {
        print('Kết quả: $n không phải là số nguyên tố.');
      }
    } else {
      print('Lỗi: Vui lòng nhập số nguyên hợp lệ.');
    }
  } else {
    print('Lỗi: Không có dữ liệu được nhập.');
  }
}

bool isPrime(int n) {
  if (n < 2) return false;
  if (n == 2 || n == 3) return true;
  if (n % 2 == 0) return false;

  for (int i = 3; i <= sqrt(n).toInt(); i += 2) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
