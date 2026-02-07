import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// =======================
/// APP ROOT
/// =======================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

/// =======================
/// PAGE 1 : PROFILE
/// =======================
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // กันจอล้น
          child: Column(
            children: [
              /// ---------- HEADER ----------
              Container(
                decoration: const BoxDecoration(color: Color(0xFFEEA943)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    const Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),

                    /// รูปโปรไฟล์
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/736x/c1/06/d7/c106d79e7a5ef0101a9c45fa092cc697.jpg',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    const Text(
                      "Thanawat Patthanathaworn",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      "Thanawat.patthanathaworn@-tech.ac.th",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              /// ---------- DETAIL ----------
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ข้อมูลส่วนตัว',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    _infoRow(
                      Icons.phone,
                      Colors.green,
                      "เบอร์โทรศัพท์",
                      "012-345-6789",
                    ),
                    _infoRow(
                      Icons.cake,
                      Colors.pink,
                      "วันเกิด",
                      "28 มีนาคม 2549",
                    ),
                    _infoRow(
                      Icons.pin_drop,
                      Colors.orange,
                      "ที่อยู่",
                      "ชลบุรี",
                    ),
                    _infoRow(
                      Icons.school,
                      Colors.deepPurple,
                      "การศึกษา",
                      "วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)",
                    ),

                    const SizedBox(height: 20),

                    /// ปุ่มเปลี่ยนหน้า
                    Center(
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/second'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 130,
                            vertical: 8,
                          ),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Change Page",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// widget แถวข้อมูล
  Widget _infoRow(IconData icon, Color color, String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 35, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// =======================
/// PAGE 2 : SOCIAL PROFILE
/// =======================
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              /// ---------- PROFILE + STATS ----------
              Row(
                children: [
                  /// รูปโปรไฟล์
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: ClipOval(
                      child: Image.network(
                        'https://i.pinimg.com/736x/9c/0e/80/9c0e8059e8b99dc7aefb126224c4aedc.jpg',
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  /// ---------- STAT BAR ----------
                  Expanded(
                    child: IntrinsicHeight(
                      // IntrinsicHeight ทำให้ VerticalDivider สูงพอดีกับตัวเลข
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildStatItem("5", "กำลังติดตาม"),

                          /// เส้นคั่นแนวตั้ง
                          VerticalDivider(
                            color: Colors.grey.shade400,
                            thickness: 1,
                            width: 1,
                          ),

                          _buildStatItem("828.1 K", "ผู้ติดตาม"),

                          /// เส้นคั่นแนวตั้ง
                          VerticalDivider(
                            color: Colors.grey.shade400,
                            thickness: 1,
                            width: 1,
                          ),

                          _buildStatItem("329.9 K", "ถูกใจและบันทึก"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              /// ---------- NAME ----------
              Row(
                children: const [
                  Text(
                    "Thanawat Tai",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.verified, color: Colors.blue, size: 23),
                ],
              ),

              Row(
                children: const [
                  Icon(Icons.tiktok, size: 15, color: Color(0xff737373)),
                  Text(
                    "Thanawat14",
                    style: TextStyle(color: Color(0xff737373)),
                  ),
                  Icon(Icons.arrow_drop_down, color: Color(0xff737373)),
                ],
              ),

              const SizedBox(height: 10),

              /// ---------- FOLLOW BUTTON ----------
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffff9c3c),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                      ),
                      child: const Text(
                        "ติดตาม",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.share, size: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// widget แสดงสถิติ
  Widget _buildStatItem(String count, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Color(0xff363636), fontSize: 15),
        ),
      ],
    );
  }
}

