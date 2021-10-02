import 'package:flutter/material.dart';

void main() {
  runApp(MyInfo());
}

class MyInfo extends StatelessWidget {
  String _message = 'تطبيق مسبحه الاذكار';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if (modalRoute != null) {
      Map<String, dynamic> arguments =
          modalRoute.settings.arguments as Map<String, dynamic>;
      if (arguments.containsKey('message')) {
        _message = arguments['message'];
      }
    }
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: Colors.teal,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: Text(
            _message,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            // color: Colors.blue,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade700,
                Colors.teal.shade500,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [   //<Widget>
              const Spacer(),
              const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 75.0,
                  backgroundImage: AssetImage('images/karam.jpeg'),
                ),
              ),
              const Text(
                'Karam Mohammed Shaat',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize:25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,

                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                'Elancer FLUTTER Trainee',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                elevation: 9,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  margin: const EdgeInsets.symmetric(
                      vertical: 19.0, horizontal: 25.0),
                  child: const ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+970595783031',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Card(
                elevation: 9,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: const ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'karm.shaat@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'eLancer-AzkarApp',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//باك
