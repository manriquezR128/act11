import 'package:flutter/material.dart';
import 'package:manriquez/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff006290),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff000000)),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Greeting to Jonatan
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abarrotes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '8 Mayo, 2024',
                            style: TextStyle(color: Color(0xff002c6d)),
                          )
                        ],
                      ),
                      // Notification Icon
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff002f97),
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xff080202),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Buscar',
                          style: TextStyle(color: Color(0xff0f0c0c)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //how do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'En qué podemos ayudarte?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12),
                            child: EmoticonFace(emoticonFace: '🥚'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Despensa',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      SizedBox(width: 8), // Added separation

                      // fine
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12),
                            child: EmoticonFace(emoticonFace: '🧺'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Limpieza',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      SizedBox(width: 8), // Added separation

                      // well
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12),
                            child: EmoticonFace(emoticonFace: '🍟'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Papitas',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      SizedBox(width: 8), // Added separation

                      // excellent
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      // exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Lo más popular',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // list view of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.food_bank,
                              exerciseName: 'Huevo por pz',
                              numberOfExercises: '📍',
                              color: Color(0xff001d5c),
                            ),
                            ExerciseTile(
                              icon: Icons.cleaning_services_rounded,
                              exerciseName: 'Pinol',
                              numberOfExercises: '📍',
                              color: Color(0xff000000),
                            ),
                            ExerciseTile(
                              icon: Icons.food_bank,
                              exerciseName: 'Sabritas adobadas',
                              numberOfExercises: '📍',
                              color: Color(0xff0047cd),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({required this.emoticonFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(
        emoticonFace,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
