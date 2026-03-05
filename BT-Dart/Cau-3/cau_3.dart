void main() {
  print('MSSV: 6451071033');
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print('Danh sách ban đầu: $a');

  print('Các phần tử nhỏ hơn 5 là:');
  for (int i in a) {
    if (i < 5) {
      print(i);
    }
  }
}
