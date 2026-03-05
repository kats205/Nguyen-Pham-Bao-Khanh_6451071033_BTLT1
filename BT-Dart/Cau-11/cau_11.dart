import 'dart:io';

void main() {
  print('MSSV: 6451071033');
  stdout.write('Bạn muốn tạo bao nhiêu số Fibonacci? Nhập số lượng: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    int? count = int.tryParse(input);
    if (count != null && count >= 0) {
      List<int> fibonacciSequence = generateFibonacci(count);
      print('Dãy $count số Fibonacci đầu tiên là:');
      print(fibonacciSequence);
    } else {
      print('Lỗi: Số lượng nhập vào phải là một nguyên số dương hợp lệ.');
    }
  } else {
    print('Lỗi: Không có dữ liệu được nhập.');
  }
}

List<int> generateFibonacci(int length) {
  if (length == 0) return [];
  if (length == 1) return [1];

  List<int> list = [1, 1];
  for (int i = 2; i < length; i++) {
    list.add(list[i - 1] + list[i - 2]);
  }
  return list;
}
