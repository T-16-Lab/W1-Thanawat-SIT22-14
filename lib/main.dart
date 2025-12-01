import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/second',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xFFEEA943)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(6),
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
                    SizedBox(height: 20),
                    Text(
                      "Thanawat Patthanathaworn",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
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
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ข้อมูลส่วนตัว',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),

                  //เบอร์โทรศัพท์
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFF6DD91A),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.phone,
                          size: 35,
                          color: Color(0xFFE6FFEE),
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('เบอร์โทรศัพท์', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 5),
                          Text(
                            "012-345-6789",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  //วันเกิด
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.pink[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.cake,
                          size: 35,
                          color: Color(0xFFFFB5B5),
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('วันเกิด', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 5),
                          Text(
                            "28 มีนาคม 2549",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  //ที่อยู่
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE3C4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.pin_drop,
                          size: 35,
                          color: Color(0xFFEA9844),
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ที่อยู่', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 5),
                          Text(
                            "ชลบุรี",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  //การศึกษา
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFE6D8FF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.school,
                          size: 35,
                          color: Color(0xFF6B39CE),
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('การศึกษา', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 5),
                          Text(
                            "วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  //ปุ่มไปยังหน้า 2
                  Center(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/second'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 130,
                          vertical: 8,
                        ), //ตั้งค่าขนาดในปุ่ม horizontal: 130 คทอความยาวของปุ่ม vertical: 8 คือความสูงของปุ่ม
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
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
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // พื้นหลังสีขาว
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // ลบเงาใต้ AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context), // ปุ่มย้อนกลับ
        ),
        title: Text(
          "Thamawat_Tai", // ชื่อบนหัว
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, //อยู่ตรงกลาง
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        // ใช้เพื่อให้เลื่อนหน้าจอได้ถ้าเนื้อหาเยอะ
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // จัดทุกอย่างชิดซ้าย
          children: [
            // ส่วนที่ 1: รูปโปรไฟล์ และ สถิติ (Header)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // จัดให้ห่างกันสุดขอบ
                children: [
                  // รูปโปรไฟล์วงกลม
                  CircleAvatar(
                    radius: 50, // ขนาดวงกลม
                    backgroundImage: NetworkImage(
                      'https://i.pinimg.com/736x/c1/06/d7/c106d79e7a5ef0101a9c45fa092cc697.jpg', // ใส่ URL รูปแมว
                    ),
                  ),
                  // กลุ่มสถิติ (ใช้ Expanded เพื่อให้กินพื้นที่ที่เหลือ)
                  Expanded(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly, // จัดระยะห่างเท่าๆ กัน
                      children: [
                        _buildStatColumn("5", "กำลังติดตาม",),
                        _buildStatColumn("828.1 K", "ผู้ติดตาม"),
                        _buildStatColumn("329.9 K", "ถูกใจและบันทึก"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15), // เว้นระยะห่าง
            // ส่วนที่ 2: ชื่อและรายละเอียด (Bio)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Thanawat_Tai",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 20,
                      ), // ไอคอนติ๊กถูกสีฟ้า
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    " Thanawat14 ▾", // จำลองข้อความ
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ส่วนที่ 3: ปุ่มติดตาม (Buttons)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    // ให้ปุ่มติดตามยืดเต็มพื้นที่
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF9800), // สีเหลืองนีออน
                        foregroundColor: Colors.black, // ตัวหนังสือสีดำ
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: Text(
                        "ติดตาม",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  // ปุ่มแชร์ (icon เล็กๆ ข้างๆ)
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.share,
                      size: 24,
                    ), // หรือใช้ Icons.arrow_drop_down ตามรูป
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ส่วนที่ 4: ตารางรูปภาพ (Gallery Grid)
            GridView.builder(
              shrinkWrap: true, // สำคัญ! เพื่อให้ GridView อยู่ใน Column ได้
              physics:
                  NeverScrollableScrollPhysics(), // ปิดการเลื่อนของ GridView เอง (ให้ใช้ Scroll ของหน้าหลัก)
              itemCount: 6, // จำนวนรูปภาพตัวอย่าง
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    3, // แบ่งเป็น 3 คอลัมน์ (หรือ 2 ตามรูป ถ้าชอบรูปใหญ่ๆ)
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 1, // สัดส่วนรูปภาพ 1:1 (สี่เหลี่ยมจัตุรัส)
              ),
              itemBuilder: (context, index) {
                return Image.network(
                  'https://placekitten.com/300/300?image=$index', // รูปแมวสุ่ม
                  fit: BoxFit.cover,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันย่อยสำหรับสร้างคอลัมน์ตัวเลขสถิติ (เพื่อลดโค้ดซ้ำ)
  Widget _buildStatColumn(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 15, color: Colors.black)),
      ],
    );
  }
}
