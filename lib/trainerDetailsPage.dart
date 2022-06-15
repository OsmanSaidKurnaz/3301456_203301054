import 'package:flutter/material.dart';
import 'package:petgallerry/trainerModal.dart';

class TrainerDetailsScreen extends StatefulWidget {
  TrainerDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TrainerDetailsScreen> createState() => _TrainerDetailsScreenState();
}

class _TrainerDetailsScreenState extends State<TrainerDetailsScreen> {
  String get imgURL => this.imgURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[800],
        centerTitle: true,
        title: Text("Trainer Details"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TrainerDetailsBuilder(
                "Ash Ketchum",
                "images/ash.png",
                "Ash Pokémon Anime serisinin ana kahramanıdır. Her zaman dünyanın en büyük Pokémon Ustası olmayı hayal eden Kanto bölgesindeki Palet Kasabasından 10 yaşında bir Pokémon Eğitmenidir.",
                "images/pikachu.png",
                "images/charmander.png",
                "images/squirtle.png",
                "images/balbasaur.png",
              ),
              TrainerDetailsBuilder(
                "Misty",
                "images/misty.png",
                "Misty, Pokémon Red and Green'de ilk çıkışını yapan bir karakterdir. Misty, Cerulean City Spor Salonunun Spor Salonu Lideridir ve Su tipi Pokémon konusunda uzmanlaşmıştır.",
                "images/psyduck.png",
                "images/korsala.png",
                "images/starmie.png",
                "images/gyarados.png",
              ),
              TrainerDetailsBuilder(
                "Brock",
                "images/brock.webp",
                "Brock aslında Pewter City Gym'in Spor Salonu Lideri ama en büyük Pokémon Yetiştiricisi olma hayalinin peşinden gitmeye karar verdi. Ash Ketchum'a karşı aldığı yenilginin ardından , unvanından hızla vazgeçti. Ash'e yolculuğunda bir süre eşlik etti, bir yandan da amacına ulaşmaya çalışırken.",
                "images/geodude.png",
                "images/steelix.png",
                "images/vulpix.png",
                "images/crobat.png",
              ),
              TrainerDetailsBuilder(
                "James",
                "images/james.webp",
                "James, nadir Pokémon yakalamaya çalışan kötü bir ekip olan Roket Takımı'nın bir üyesidir. Üçlünün asıl amacı Ash'in Pikachu'sunu çalmak.",
                "images/poliwrath.png",
                "images/gyarados.png",
                "images/tyranitar.png",
                "images/slowking.png",
              ),
              TrainerDetailsBuilder(
                "Jessie",
                "images/jessie.webp",
                "Jessica, daha iyi bilinen adıyla Jessie, Team Rocket'ın iyi bilinen bir üyesidir. Jessie, Meowth ve James, Roket Takımı organizasyonunun erişiminin ötesinde faaliyet gösteren bir grup bağımsız saha ajanıdır.",
                "images/arbok.png",
                "images/hitmonlee.png",
                "images/starmie.png",
                "images/weezing.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
