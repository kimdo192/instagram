  import 'package:flutter/material.dart';
  import 'package:instagram/screens/message.dart';
  import 'package:instagram/screens/search.dart';
  import 'package:instagram/screens/add_box.dart';
  import 'package:instagram/screens/movie.dart';
  import 'package:instagram/screens/person.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        title: 'instagram',
        home: MyHomePage(
          backgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
      );
    }
  }

  class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key, required Color backgroundColor});

    @override
    State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {

    int selectedIndex = 0;

    final List<Widget> widgetOptions = <Widget>[
      Home(),
      Search(),
      Addbox(),
      Movie(),
      Person(),
    ];

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: Divider(color: Colors.grey),
          ),
          actions: [
            IconButton(onPressed: () {},icon: Icon(Icons.favorite_border)),
            IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Message()),
              );
            },icon: Icon(Icons.send)),
          ],
        ),
        body: SafeArea(
          child: widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'add_box'),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'movie'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          ],
        ),
      );
    }

    @override
    void initState() {
      super.initState();
    }

    @override
    void dispose() {
      super.dispose();
    }
  }

  class Home extends StatelessWidget {
    const Home({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(25),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/girl.jpg',
                width: 400,
                height: 440,
              ),
            ],
          ),
        ),
      );
    }
  }


