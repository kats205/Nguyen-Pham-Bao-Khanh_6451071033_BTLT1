import 'dart:io';

void main() {
  print('MSSV: 6451071033');
  stdout.write('Nhập vào một số nguyên: ');
  
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    int? number = int.tryParse(input);
    
    if (number != null) {
      if (number % 2 == 0) {
        print('Kết quả: Số $number là số chẵn.');
      } else {
        print('Kết quả: Số $number là số lẻ.');
      }
    } else {
      print('Lỗi: Giá trị nhập vào không phải là số nguyên hợp lệ.');
    }
  } else {
    print('Lỗi: Không có dữ liệu được nhập.');
  }
}
