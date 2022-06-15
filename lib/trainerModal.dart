import 'package:flutter/material.dart';

class Trainer {
  late String name;
  late String imgURL;
  late double attackValue;
  late double defenceValue;
  late double charismaValue;
  late double intelligenceValue;
  late String details;
  late String pokemonImgURL1;
  late String pokemonImgURL2;
  late String pokemonImgURL3;
  late String pokemonImgURL4;

  Trainer({
    required this.name,
    required this.imgURL,
    required this.attackValue,
    required this.defenceValue,
    required this.charismaValue,
    required this.intelligenceValue,
    required this.details,
    required this.pokemonImgURL1,
    required this.pokemonImgURL2,
    required this.pokemonImgURL3,
    required this.pokemonImgURL4,
  });
}

Widget TrainerBuilder(String name, String imgURL, double attackValue,
    double defenceValue, double charismaValue, double intelligenceValue) {
  return Container(
    margin: EdgeInsets.only(
      bottom: 20,
      top: 5,
    ),
    padding: EdgeInsets.only(left: 10, top: 10, right: 15),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Image.asset(
                    imgURL,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  name,
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
                    child: Text("Attack", textAlign: TextAlign.left)),
                Container(
                  width: 200,
                  height: 10,
                  child: LinearProgressIndicator(
                    valueColor:
                        new AlwaysStoppedAnimation<Color>(Colors.red.shade400),
                    value: attackValue,
                  ),
                ),
                Container(
                    width: 200,
                    child: Text("Defence", textAlign: TextAlign.left)),
                Container(
                  width: 200,
                  height: 10,
                  child: LinearProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(
                        Colors.green.shade400),
                    value: defenceValue,
                  ),
                ),
                Container(
                    width: 200,
                    child: Text("Charisma", textAlign: TextAlign.left)),
                Container(
                  width: 200,
                  height: 10,
                  child: LinearProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(
                        Colors.purple.shade400),
                    value: charismaValue,
                  ),
                ),
                Container(
                    width: 200,
                    child: Text("Intelligence", textAlign: TextAlign.left)),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: 200,
                  height: 10,
                  child: LinearProgressIndicator(
                    valueColor:
                        new AlwaysStoppedAnimation<Color>(Colors.pink.shade400),
                    value: intelligenceValue,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

Widget TrainerDetailsBuilder(
  String name,
  String imgURL,
  String details,
  String pokemonImgURL1,
  String pokemonImgURL2,
  String pokemonImgURL3,
  String pokemonImgURL4,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        width: 350,
        height: 450,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Image.asset(imgURL),
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
            ),
            Text(
              details,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 17.5,
                letterSpacing: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(width: 2)),
                  child: CircleAvatar(
                    child: Image.asset(pokemonImgURL1),
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(width: 2)),
                  child: CircleAvatar(
                    child: Image.asset(pokemonImgURL2),
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(width: 2)),
                  child: CircleAvatar(
                    child: Image.asset(pokemonImgURL3),
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(width: 2)),
                  child: CircleAvatar(
                    child: Image.asset(pokemonImgURL4),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
