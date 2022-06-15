import 'package:flutter/material.dart';

class TermsOfUseScreen extends StatefulWidget {
  TermsOfUseScreen({Key? key}) : super(key: key);

  @override
  State<TermsOfUseScreen> createState() => _TermsOfUseScreenState();
}

class _TermsOfUseScreenState extends State<TermsOfUseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[800],
        centerTitle: true,
        title: Text("Terms of Use"),
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
              "Bu Koşulların amaçları doğrultusunda: (a) 'İçerik', metin, yazılım, komut dosyaları, grafikler, fotoğraflar, sesler, müzik, videolar, görsel-işitsel kombinasyonlar, etkileşimli özellikler, her türlü yazarlığa ait eserler ve burada bulunan bilgiler veya diğer materyaller anlamına gelir. Hizmetler aracılığıyla yayınlanan, oluşturulan, sağlanan veya başka bir şekilde kullanıma sunulan ve (b) 'Kullanıcı İçeriği', Hesap sahiplerinin (siz dahil) Hizmetler aracılığıyla kullanıma sunulmasını sağladığı herhangi bir İçerik anlamına gelir. İçerik, sınırlama olmaksızın Kullanıcı İçeriğini içerir. Bu Koşullara uymanıza bağlı olarak, Niantic size İçeriği yalnızca Hizmetlerin izin verilen kullanımınızla bağlantılı olarak indirmeniz, görüntülemeniz, görüntülemeniz ve kullanmanız için kişisel, ticari olmayan, münhasır olmayan, devredilemez, alt lisansı verilemeyen, geri alınabilir bir lisans verir.\nİçerik Sahipliği\nNiantic, herhangi bir Kullanıcı İçeriğinde herhangi bir mülkiyet hakkı iddiasında bulunmaz ve bu Koşullardaki hiçbir şey, Kullanıcı İçeriğinizi kullanmak ve kullanmak zorunda kalabileceğiniz hakları kısıtladığı kabul edilmeyecektir. Yukarıda belirtilenlere tabi olarak, Niantic ve lisans verenleri (TPC ve TPCI dahil), ilgili tüm fikri mülkiyet hakları da dahil olmak üzere Hizmetler ve İçeriğe ilişkin tüm haklara, unvanlara ve menfaatlere münhasıran sahiptir. Hizmetlerin ve İçeriğin telif hakkı, ticari marka ve Amerika Birleşik Devletleri ve yabancı ülkelerin diğer yasalarıyla korunduğunu kabul etmektesiniz. Hizmetlere veya İçeriğe dahil edilen veya bunlara eşlik eden herhangi bir telif hakkı, ticari marka, hizmet markası veya diğer mülkiyet hakkı bildirimlerini kaldırmamayı, değiştirmemeyi veya gizlememeyi kabul edersiniz.\nTarafınızdan Verilen Haklar\nHizmetler aracılığıyla herhangi bir Kullanıcı İçeriğini kullanıma sunarak, Niantic'e münhasır olmayan, kalıcı, geri alınamaz, devredilebilir, alt lisans verilebilir, dünya çapında, telif ücretsiz kullanım, kopyalama, değiştirme, dayalı türev çalışmalar oluşturma, kamuya açık görüntüleme, kamuya açık olarak gerçekleştirme ve Kullanıcı İçeriğinizi, Hizmetlerin ve İçeriğin işletilmesi ve sağlanmasıyla bağlantılı olarak size ve diğer Hesap sahiplerine dağıtmak.\nTüm Kullanıcı İçeriğinizden yalnızca siz sorumlusunuz. Tüm Kullanıcı İçeriğinizin sahibi olduğunuzu veya bu Koşullar kapsamında Kullanıcı İçeriğinizdeki lisans haklarını bize vermek için gerekli tüm haklara sahip olduğunuzu beyan ve garanti edersiniz. Ayrıca, ne Kullanıcı İçeriğinizin ne de Hizmetler aracılığıyla kullanıma sunulacak Kullanıcı İçeriğinizin kullanımı ve sağlanmasının ya da Niantic tarafından Hizmetler üzerinde veya aracılığıyla Kullanıcı İçeriğinizin herhangi bir şekilde kullanılmasının, bir üçüncü tarafların fikri mülkiyet hakları veya tanıtım veya gizlilik hakları veya geçerli herhangi bir yasa veya yönetmeliğin ihlali ile sonuçlanması. Niantic, tamamen kendi takdirine bağlı olarak, Kullanıcı İçeriğinin uygunsuz olduğuna veya Eğitmen Yönergeleri'ni veya bu Koşulları ihlal ettiğine inandığı tüm gönderileri reddedebilir.",
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
