class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color) {
    if (id <= 0) {
      throw ArgumentError('Lỗi: ID phải lớn hơn 0.');
    }
    if (name.trim().isEmpty) {
      throw ArgumentError('Lỗi: Tên không được rỗng.');
    }
  }

  void printInfo() {
    print('Animal [ID: $id, Name: $name, Color: $color]');
  }
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  @override
  void printInfo() {
    print('Cat [ID: $id, Name: $name, Color: $color, Sound: $sound]');
  }
}

void main() {
  print('MSSV: 6451071033');
  print('--- Test Điều Kiện Đúng (Happy Path) ---');
  try {
    Cat myCat = Cat(1, 'Tom', 'Blue/Grey', 'Meow');
    myCat.printInfo();
  } catch (e) {
    print(e);
  }

  print('\n--- Test Điều Kiện Sai (Edge Case) ---');
  try {
    Cat errorCat = Cat(-1, '', 'Red', 'Bark');
    errorCat.printInfo();
  } catch (e) {
    print('Bắt lỗi thành công từ lớp cha (Animal): $e');
  }
}
