import 'dart:io';

void main() {
  print('MSSV: 6451071033');
  stdout.write('Nhập tên của bạn: ');
  String? name = stdin.readLineSync();

  stdout.write('Nhập tuổi của bạn: ');
  String? ageStr = stdin.readLineSync();

  if (name != null && name.isNotEmpty && ageStr != null && ageStr.isNotEmpty) {
    int? age = int.tryParse(ageStr);
    if (age != null && age > 0) {
      int yearsLeft = 100 - age;
      if (yearsLeft > 0) {
        print('Chào $name, bạn sẽ sống tới 100 tuổi trong $yearsLeft năm nữa.');
      } else if (yearsLeft == 0) {
        print('Chào $name, bạn đã đúng 100 tuổi rồi!');
      } else {
        print(
          'Chào $name, bạn đã qua mốc 100 tuổi cách đây ${-yearsLeft} năm!',
        );
      }
    } else {
      print('Lỗi: Tuổi không hợp lệ.');
    }
  } else {
    print('Lỗi: Dữ liệu nhập vào chưa đầy đủ.');
  }
}
