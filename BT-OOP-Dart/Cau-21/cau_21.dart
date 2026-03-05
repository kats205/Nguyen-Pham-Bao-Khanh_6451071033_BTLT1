class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram) {
    if (ram <= 0) {
      throw ArgumentError('Lỗi: RAM phải lớn hơn 0.');
    }
    if (name.isEmpty) {
      throw ArgumentError('Lỗi: Tên Laptop không được để trống.');
    }
  }

  void display() {
    print('Laptop [ID: $id, Name: $name, RAM: ${ram}GB]');
  }
}

void main() {
  print('MSSV: 6451071033');
  print('--- Test Case Đúng ---');
  try {
    Laptop laptop1 = Laptop(1, 'ThinkPad', 16);
    Laptop laptop2 = Laptop(2, 'MacBook', 8);
    Laptop laptop3 = Laptop(3, 'Dell', 32);

    laptop1.display();
    laptop2.display();
    laptop3.display();
  } catch (e) {
    print(e);
  }

  print('\n--- Test Case Sai ---');
  try {
    Laptop laptopError = Laptop(4, 'Asus', -4);
    laptopError.display();
  } catch (e) {
    print('Bắt lỗi thành công: $e');
  }
}
