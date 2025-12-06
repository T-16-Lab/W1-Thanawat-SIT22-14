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
      initialRoute: '/',
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
                  Padding(padding: const EdgeInsets.all(5.5)),
                  Text(
                    'ข้อมูลส่วนตัว',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 20),

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

                  Center(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/second'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 130,
                          vertical: 8,
                        ),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.15),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0xffa8a8a8),
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/474x/b5/34/e0/b534e0e9934f8ba5a3e4b8c249cc9988.jpg',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(width: 20),

                    Expanded(
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildStatItem("5", "กำลังติดตาม"),
                            _buildStatItem("828.1 K", "ผู้ติดตาม"),
                            _buildStatItem("329.9 K", "ถูกใจและบันทึก"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Thanawat Tai",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.verified, color: Colors.blue, size: 23),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.tiktok, size: 15, color: Color(0xff737373)),
                      Text(
                        "Thanawat14",
                        style: TextStyle(color: Color(0xff737373)),
                      ),
                      Icon(Icons.arrow_drop_down, color: Color(0xff737373)),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Center(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, '/'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 130,
                              vertical: 8,
                            ),
                            backgroundColor: Color(0xffff9c3c),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            " ติดตาม",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Icon(Icons.share, size: 30),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  Column(
                    children: [
                      Padding(padding: const EdgeInsets.all(5.5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/86/df/7d/86df7d9a315a220ffaffce0f1617fd26.jpg',
                            width: 175,
                            height: 175,
                            fit: BoxFit.cover,
                          ),

                          const SizedBox(width: 20),

                          Image.network(
                            'https://i.pinimg.com/736x/11/38/09/113809154f37d851bc541d5e635b8840.jpg',
                            width: 175,
                            height: 175,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Color(0xff363636), fontSize: 15)),
      ],
    );
  }
}
