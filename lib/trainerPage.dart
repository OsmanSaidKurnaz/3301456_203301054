import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:petgallerry/trainerDetailsPage.dart';
import 'package:petgallerry/trainerModal.dart';

class TrainerScreen extends StatefulWidget {
  TrainerScreen({Key? key}) : super(key: key);

  @override
  State<TrainerScreen> createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen> {
  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    CollectionReference musicInfo = _firestore.collection('trainersData');
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -50,
            right: -50,
            child: Image.asset(
              'images/pokeball.png',
              width: 200,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
              top: 100,
              left: 20,
              child: Text(
                'Trainer List',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )),
          Positioned(
            top: 97.5,
            left: 255,
            width: 100,
            height: 40,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.amber[800],
              ),
              child: MaterialButton(
                child: Text(
                  "Details",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => TrainerDetailsScreen()));
                },
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 175,
            bottom: 0,
            child: Container(
              width: 400,
              child: StreamBuilder<QuerySnapshot>(
                  stream: musicInfo.snapshots(),
                  builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
                    //just add this line
                    if (asyncSnapshot.data == null)
                      return const CircularProgressIndicator();

                    List<DocumentSnapshot> docSnap = asyncSnapshot.data.docs;
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: docSnap.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            bottom: 20,
                            top: 5,
                          ),
                          padding:
                              EdgeInsets.only(left: 10, top: 10, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber.shade400,
                          ),
                          width: 400,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 50,
                                        child: Image.network(
                                          '${docSnap[index]["url"]}',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Text(
                                        '${docSnap[index]["name"]}',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          width: 200,
                                          child: Text("Attack",
                                              textAlign: TextAlign.left)),
                                      Container(
                                        width: 200,
                                        height: 10,
                                        child: LinearProgressIndicator(
                                          valueColor:
                                              new AlwaysStoppedAnimation<Color>(
                                                  Colors.red.shade400),
                                          value: docSnap[index]["attackV"],
                                        ),
                                      ),
                                      Container(
                                          width: 200,
                                          child: Text("Defence",
                                              textAlign: TextAlign.left)),
                                      Container(
                                        width: 200,
                                        height: 10,
                                        child: LinearProgressIndicator(
                                          valueColor:
                                              new AlwaysStoppedAnimation<Color>(
                                                  Colors.green.shade400),
                                          value: docSnap[index]["defenceV"],
                                        ),
                                      ),
                                      Container(
                                          width: 200,
                                          child: Text("Charisma",
                                              textAlign: TextAlign.left)),
                                      Container(
                                        width: 200,
                                        height: 10,
                                        child: LinearProgressIndicator(
                                          valueColor:
                                              new AlwaysStoppedAnimation<Color>(
                                                  Colors.purple.shade400),
                                          value: docSnap[index]["charismaV"],
                                        ),
                                      ),
                                      Container(
                                          width: 200,
                                          child: Text("Intelligence",
                                              textAlign: TextAlign.left)),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 15),
                                        width: 200,
                                        height: 10,
                                        child: LinearProgressIndicator(
                                          valueColor:
                                              new AlwaysStoppedAnimation<Color>(
                                                  Colors.pink.shade400),
                                          value: docSnap[index]
                                              ["intelligenceV"],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
