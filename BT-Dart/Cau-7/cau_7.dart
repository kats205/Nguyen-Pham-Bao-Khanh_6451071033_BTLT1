void main() {
  print('MSSV: 6451071033');
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  print('Danh sách ban đầu: $a');

  // Lấy các phần tử chẵn
  List<int> evenNumbers = a.where((e) => e % 2 == 0).toList();
  print('Danh sách các phần tử chẵn: $evenNumbers');
}
