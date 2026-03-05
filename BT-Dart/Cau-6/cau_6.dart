import 'dart:io';

void main() {
  print('MSSV: 6451071033');
  stdout.write('Nhập vào một chuỗi: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    // Chuẩn hóa chuỗi (chuyển chữ thường, loại bỏ khoảng trắng dư thừa)
    String normalized = input.replaceAll(' ', '').toLowerCase();

    // Đảo ngược chuỗi
    String reversed = normalized.split('').reversed.join('');

    if (normalized == reversed) {
      print('Kết quả: "$input" LÀ một chuỗi Palindrome.');
    } else {
      print('Kết quả: "$input" KHÔNG PHẢI là chuỗi Palindrome.');
    }
  } else {
    print('Lỗi: Không có chuỗi nào được nhập.');
  }
}
