import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[800],
        centerTitle: true,
        title: Text("Privacy Policy"),
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            color: Colors.amber.shade400,
            borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.all(20),
        width: 350,
        height: 500,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Text(
              "PokePoke, coğrafi konum verileri, iletişim bilgileri, ad ve soyadı, e-posta adresi, telefon numarası ve posta adresi gibi bir dizi kişisel ve hassas bilgilerin yanı sıra, fotoğraflar gibi kullanıcıların paylaştığı veya yüklediği içerik (içerikte yer alan meta veriler dahil) toplar. fotoğraflarınız ve içeriğiniz). Veriler üçüncü taraflarla geniş çapta paylaşılabilir, ancak şartlar, kişisel bilgilerin üçüncü taraflara satıldığını belirtir. Ayrıca, kişisel bilgilerin davranışsal reklamcılık ve kullanıcıların zaman içinde ve farklı web siteleri ve çevrimiçi hizmetler arasındaki çevrimiçi etkinliklerini izlemek için kullanılabileceğini belirten terimler.\nŞartlar ayrıca 13 yaşın altındaki çocuklar için ek korumalar getiren ek bir Çocuk Gizlilik Bildirimi de belirtir. Ancak, ebeveyn izniyle hizmet, çocuğa yeni ürünler ve özellikler, özel teklifler, yarışmalar ve çekilişler hakkında promosyon bilgilerinin yanı sıra yeni ürünler, etkinlikler, ve Pokémon hakkında güncellemeler.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )),
    );
  }
}
