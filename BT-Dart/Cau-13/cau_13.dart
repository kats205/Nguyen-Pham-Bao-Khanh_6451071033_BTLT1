import 'dart:io';

void main() {
  print('MSSV: 6451071033');

  stdout.write('Nhập cân nặng của bạn (kg): ');
  dynamic weightInput = stdin.readLineSync();
  double? weight = double.tryParse(weightInput ?? '');

  stdout.write('Nhập chiều cao của bạn (mét - vd: 1.75): ');
  dynamic heightInput = stdin.readLineSync();
  double? height = double.tryParse(heightInput ?? '');

  // Sử dụng Type Test Operator (is) để xác thực kiểu dữ liệu num
  var isValidWeight = weight is num;
  var isValidHeight = height is num;

  if (isValidWeight && isValidHeight && height! > 0) {
    double bmi = weight! / (height * height);
    print('Chỉ số BMI của bạn là: ${bmi.toStringAsFixed(2)}');

    // Đánh giá BMI tham khảo
    if (bmi < 18.5) {
      print('Phân loại: Thiếu cân');
    } else if (bmi < 25) {
      print('Phân loại: Bình thường');
    } else if (bmi < 30) {
      print('Phân loại: Thừa cân');
    } else {
      print('Phân loại: Béo phì');
    }
  } else {
    print(
      'Lỗi: Dữ liệu nhập vào chưa đúng định dạng số học hợp lệ (chiều cao cần nhập mét).',
    );
  }
}
