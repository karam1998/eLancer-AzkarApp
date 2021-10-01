import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _content = 'الحمد لله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
          });
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Colors.teal,
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'مسبحه الاذكار',
          style: TextStyle(
            fontFamily: 'Almarai',
            color: Colors.white,
            backgroundColor: Colors.transparent,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            offset: Offset(-50, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            onCanceled: () {
              print('nothing seleccted');
            },
            color: Colors.teal.shade300,
            onSelected: (value) {
              if (_content != value) {
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text(
                    'الحمدلله',
                  ),
                  value: 'الحمدلله',
                ),
                const PopupMenuItem(
                  child: Text(
                    'استغفر الله',
                  ),
                  value: 'استغفر الله',
                ),
                const PopupMenuItem(
                  child: Text(
                    'لا اله الا الله',
                  ),
                  value: 'لا اله الا الله',
                )
              ];
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/my_info_screen',
                arguments: {'message': 'My Info '},
              );
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
        // automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/pict1.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 81,
              backgroundColor: Colors.green.shade300,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/pict2.jpg'),
                  radius: 70,
                ),
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black87,
                    offset: Offset(5, 8),
                    blurRadius: 6,
                    // spreadRadius: 4,
                  ),
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(0, 5),
                    blurRadius: 8,
                    // spreadRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                        letterSpacing: 8,
                        wordSpacing: 3,
                        fontFamily: 'Almarai',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                    child: SizedBox(
                      width: 50,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: 'Almarai',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade800,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ++_counter;
                      });
                    },
                    child: const Text(
                      'تسبيح',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade400,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(16),
                        ),
                      ),
                    ),
                    child: const Text(
                      'إعاده',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
