import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> students = [
    {'name': 'KARTIKA PUSPA SEJATI', 'nim': 'STI202102341'},
    {'name': 'AMANDA REFTI MARISKA', 'nim': 'STI202102342'},
    {'name': 'TRI RAHAYU', 'nim': 'STI202102367'},
    {'name': 'GHAZA GYMNASTIAR', 'nim': 'STI202102370'},
    {'name': 'LAELY FABILAH MIZALUNA', 'nim': 'STI202102375'},
    {'name': 'DANANG FIA ADIANTORO', 'nim': 'STI202102379'},
    {'name': 'ESA PRAYOGA ISNANDAR', 'nim': 'STI202102381'},
    {'name': 'AMIN SUPONO', 'nim': 'STI202102384'},
    {'name': 'RAHMAN RAMADANI', 'nim': 'STI202102385'},
    {'name': 'DESTA MUTIARA KARDIANSYAH', 'nim': 'STI202102389'},
    {'name': 'YUSUF JAUHAR ALIF FAQIH', 'nim': 'STI202102390'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          bool isMyName = students[index]['name'] == 'DANANG FIA ADIANTORO';
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: isMyName ? Colors.blue : Colors.black,
                width: isMyName ? 2.0 : 1.0,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    students[index]['name']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'NIM: ${students[index]['nim']}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
