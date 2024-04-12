import 'package:flutter_application_1/Models/Question.dart';
//8 sorudan sonra hata veriyor

List<Question> questions = [
  Question(
    "Emir Hoca en yüksek Flutter proje notunu hangi gruba verecek?",
    ["Slayy", "A Grubu", "B Grubu", "C Grubu"],
    "Slayy",
    "Slayy den iyisi mezarda",
  ),
  Question(
    "Flutter ile geliştirilen bir uygulamayı yayınlamak için hangi adımlar izlenir?",
    [
      "Kompilasyon, optimizasyon, paketleme",
      "Debug, test, deploy",
      "Build, run, analyze",
      "Code, compile, execute"
    ],
    "Debug, test, deploy",
    "Uygulama geliştirme sürecinde, uygulamanın kaynak kodlarının derlenmesi (kompilasyon), performansın ve işlevselliğin optimize edilmesi, ardından da platforma özgü olarak paketlenmesi adımları sırasıyla gerçekleştirilir.",
  ),
  Question(
    "Emir hocanın en sevmediği programlama dili nedir?",
    ["Flutter", "C#", "Java", "Python"],
    "Flutter",
    "Bizce, şu an bu uygulamanın yazıldığı dil:)",
  ),
  Question(
    "Hangi terim, bir bilgisayarın aynı anda birden fazla işi yapabilme yeteneği olarak tanımlanır?",
    ["Multitasking", "Multithreading", "Multiprocessing", "Multiprogramming"],
    "Multitasking",
    "Multitasking, bir bilgisayarın aynı anda birden fazla işlem veya görevi yürütebilme yeteneğini ifade eder. Bu, bilgisayarın kaynaklarını verimli bir şekilde kullanarak farklı işleri aynı anda gerçekleştirmesini sağlar.",
  ),
  Question(
    "Canımız Emir hocamız nerelidir?",
    ["Amasya", "Edirne", "Tokat", "Zonguldak"],
    "Zonguldak",
    "Bu soruyu zaten bildiğinizi varsayıyoruz:)",
  ),
  Question(
    "'JavaScript' ile hangi türdeki işlevleri yerine getirebilirsiniz?",
    [
      "Sunucu tabanlı işlemler",
      "İstemci tabanlı işlemler",
      "Dosya tabanlı işlevler",
      "Veri tabanlı işlevler"
    ],
    "İstemci tabanlı işlemler",
    "JavaScript, tarayıcıda çalışabilen bir programlama dilidir ve genellikle web sayfalarında kullanılır. Tarayıcıda çalıştığı için, istemci tabanlı işlemleri yerine getirir.",
  ),
  Question(
    "Flutter hangi dil ile yazılmıştır?",
    ["Dart", "Java", "C#", "Python"],
    "Dart",
    "Dart öğrendiğimize göre sence??",
  ),
  Question(
      "Flutter'ın geliştirilmesinde hangi şirket etkili olmuştur?",
      ["Google", "Apple", "Microsoft", "Facebook"],
      "Google",
      "Bence cevap google."),
  Question(
    "Flutter, hangi tür uygulamaların geliştirilmesi için kullanılır?",
    ["Web", "Mobil", "Oyun", "Masaüstü"],
    "Mobil",
    "Mobil",
  ),
  Question(
    "Emir hocanın Github resminin hikayesi nedir?",
    [
      "Vesikalık",
      "Selfie",
      "Arkadaşları ile fotoğraf çekinirken habersiz bir poz:)",
      "pasaport fotoğrafı"
    ],
    "Arkadaşları ile fotoğraf çekinirken habersiz bir poz:)",
    "Hocam habersizken bile çok fotojeniksiniz",
  ),
  Question(
    "Java'da bir sınıfın içinde başka bir sınıfı kullanmak için hangi terim kullanılır?",
    ["Inheritance", "Encapsulation", "Polymorphism", "Composition"],
    "Composition",
    "Java'da 'Composition' (Kompozisyon), bir sınıfın başka bir sınıfı içinde kullanması anlamına gelir. Bu, sınıflar arasında güçlü bir ilişki oluşturarak kodun modülerliğini ve yeniden kullanılabilirliğini artırır.",
  ),
  Question(
    "Flutter'da widget'lar arasında geçişler için hangi sınıf kullanılır?",
    ["Navıgator", "TransitionWidget", "AnimationController", "RouteManager"],
    "Navıgator",
    "Navigator sınıfı, farklı sayfalar veya ekranlar arasında geçiş yapmak için kullanılan bir yönlendirme ve yönetim aracıdır. ",
  ),
  Question(
    "Java'da 'static' metotlar hangi durumlarda kullanılır?",
    [
      "Sadece bir kere çağrılabilen metotlar için",
      "Belirli bir nesneye ait olmayan genel metotlar için",
      "Sadece sınıf içerisinde kullanılabilen metotlar için",
      "Tüm bu durumlar için kullanılabilir"
    ],
    "Belirli bir nesneye ait olmayan genel metotlar için",
    "Static metotlar, nesneye özgü olmayan genel işlemler için kullanılır ve nesne oluşturmadan doğrudan sınıf adı üzerinden çağrılabilirler.",
  ),
  Question(
    "Emir hoca kaç yılında Ahmet Karadeniz'e gelmiştir?",
    ["2005", "2006", "2007", "2008"],
    "2006",
    "Hocam siz geldiğinizde daha burada F blok yoktu bile:)",
  ),
  Question(
    "Flutter ile geliştirilen bir uygulamayı yayınlamak için hangi adımlar izlenir?",
    [
      "Kompilasyon, optimizasyon, paketleme",
      "Debug, test, deploy",
      "Build, run, analyze",
      "Code, compile, execute"
    ],
    "Debug, test, deploy",
    "Uygulama geliştirme sürecinde, uygulamanın kaynak kodlarının derlenmesi (kompilasyon), performansın ve işlevselliğin optimize edilmesi, ardından da platforma özgü olarak paketlenmesi adımları sırasıyla gerçekleştirilir.",
  ),
  Question(
    "Java'da 'this' anahtar kelimesi neyi temsil eder?",
    [
      "Static metotları temsil eder.",
      "Sınıfın kendisini temsil eder.",
      "Alt sınıfı temsil eder.",
      "Başka bir sınıfı temsil eder."
    ],
    "Sınıfın kendisini temsil eder.",
    "Java’da 'this' kelimesi, bir sınıfın içinde bulunduğu anlamına gelir ve o sınıfın bir örneğini temsil eder.",
  ),
  Question(
    "Flutter'da widget nedir?",
    [
      "Çalışma zamanı hatası",
      "Kullanıcı arayüzü elemanları için temel yapı taşı",
      "Veritabanı işlemleri için kullanılan sınıf",
      "Programlama dilindeki bir anahtar kelime"
    ],
    "Kullanıcı arayüzü elemanları için temel yapı taşı",
    "Widget'lar, uygulamanın görsel ve işlevsel yapısını oluşturmak için kullanılır ve farklı bileşenleri ve özellikleri bir araya getirerek zengin kullanıcı arayüzleri oluşturulmasını sağlarlar.",
  ),
  Question(
    "Flutter'da 'Scaffold' widget'ı ne işe yarar?",
    [
      "Uygulama temasını değiştirmek için kullanılır",
      "Anasayfa oluşturmak ve temel yapıyı belirlemek için kullanılır",
      "Veri tabanı işlemlerini gerçekleştirmek için kullanılır",
      "Animasyonları yönetmek için kullanılır"
    ],
    "Anasayfa oluşturmak ve temel yapıyı belirlemek için kullanılır",
    "'Scaffold' widget'ı, bir Flutter uygulamasının temel iskeletini oluşturur. Uygulamanın görsel yapısını sağlar ve birçok standart yapı elemanını içerir.",
  ),
  Question(
    "'Linux' hangi tür bir işletim sistemidir?",
    [
      "Kapalı kaynak kodlu",
      "Ücretli bir işletim sistemi",
      "Açık kaynak kodlu",
      "Sadece masaüstü kullanımına yönelik "
    ],
    "Açık kaynak kodlu",
    "Linux, açık kaynak kodlu bir işletim sistemidir. Bu, kaynak kodunun genel kullanıma açık olması ve topluluk geliştiricilerinin işletim sistemini özgürce geliştirmesine ve değiştirmesine olanak tanır.",
  ),
  Question(
    "Google'ın ilk arama motoru algoritması adı nedir?",
    ["Penguin", "Panda", "PageRank", "BackRub"],
    "BackRub",
    "BackRub, Google'ın ilk arama motoru algoritmasıdır ve daha sonra 'PageRank' olarak bilinen bir değerlendirme sistemini kullanmıştır.",
  ),
  Question(
    "Emir hoca şifrelerini hangi konulardan yapmaz?",
    ["Arabalar", "Kargo şirketleri", "My little ponny", "Anime"],
    "Anime",
    "Emir hoca şifrelerini hoşlanmadığı şeylerden yapar:)",
  ),
  Question(
    "Hangi terim, bir bilgisayar programında bir hata veya anormal durum oluştuğunda kullanıcıya bilgi veren bir mesajı ifade eder?",
    ["Syntax Error", "Runtime Error", "Logical Error", "Debugging Error"],
    "Runtime Error",
    "Runtime Error, bir programın çalışma zamanında oluşan ve programın normal şekilde işlemesini engelleyen hataları ifade eder.",
  ),
  Question(
    "Flutter'da 'Stateful' ve 'Stateless' widget'lar arasındaki temel fark nedir?",
    [
      "'Stateful' widget'lar daha hafiftir.",
      "'Stateful' widget'lar durumu depolayabilir, 'Stateless' widget'lar ise durumsuzdur.",
      "'Stateless' widget'lar daha esnek ve güçlüdür.",
      "'Stateless' widget'lar animasyonları desteklemez."
    ],
    "'Stateful' widget'lar durumu depolayabilir, 'Stateless' widget'lar ise durumsuzdur.",
    "'Stateful' widget'lar, içlerinde değişken durumları saklayabilir ve bu durum değiştiğinde yeniden çizimi tetiklerken, 'Stateless' widget'lar sabit bir görünümü temsil eder ve durumsuz olarak tanımlanırlar. ",
  ), /*
  Question(
      "Flutter'da 'BuildContext' nedir ve ne işe yarar?",
      [
        "Widget'lar arasında veri iletişimini sağlar.",
        "Widget'ların konumunu belirler",
        "Widget'lar arasında gezinmeyi sağlar.",
        "Widget'ın yerel bağlamını temsil eder."
      ],
      "Widget'ın yerel bağlamını temsil eder.",
      "'BuildContext', Flutter'da widget'lar arasında bir hiyerarşi oluşturan ve her bir widget'in bağlamını temsil eden önemli bir yapıdır. "),
  Question(
    "İlk yazılı anayasaya sahip ülke hangisidir?",
    ["ABD", "Fransa", "Türkiye", "İngiltere"],
    "Fransa",
    "Fransız Devrimi'nin ardından 1791'de kabul edilen 'Fransız Anayasası', modern dünyada yazılı olarak kabul edilen ilk anayasa olarak bilinir.",
  ),
  Question(
    "Antik Yunan'da hangi filozof 'Platon'un öğrencisi olarak bilinir?",
    ["Sokrat", "Aristoteles", "Diyojen", "Herakleitos"],
    "Aristoteles",
    "Platon’un Atina'daki Akademi'sine girmesiyle en parlak öğrencilerinden biri olan Aristo, Platon'un okulundayken okuma tutkusuyla tanındığı ve 'okuyucu' lakabını edindiği söylenir.",
  ),
  Question(
    "Hangi dil, dünya genelinde en çok konuşulan anadil olarak kabul edilmektedir?",
    ["İngilizce", "Çince(Mandarin)", "İspanyolca", "Hintçe"],
    "Çince(Mandarin)",
    "Dünya genelinde en çok konuşulan anadil olarak kabul edilen dil Çince (Mandarin)'dir. Çin'in geniş nüfusu, Çince'nin dünya genelinde en çok konuşulan anadil olmasına katkı sağlamaktadır.",
  ),
  Question(
    "İngiliz yazar George Orwell'ın 'Hayvan Çiftliği' adlı eseri hangi siyasi ideolojiyi eleştirmektedir?",
    ["Kapitalizm", "Faşizm", "Sosyalizm", "Anarşizm"],
    "Sosyalizm",
    "Orwell, eserinde Sovyetler Birliği'nde hâkim olan Stalinist sosyalizmi eleştirir. Hikâye, toplumda güç sahiplerinin kötüye kullanımını ve totaliter bir rejimin yarattığı zorbalığı gösterir.",
  ),
  Question(
    "Java'da 'this' anahtar kelimesi neyi temsil eder?",
    [
      "Static metotları temsil eder.",
      "Sınıfın kendisini temsil eder.",
      "Alt sınıfı temsil eder.",
      "Başka bir sınıfı temsil eder."
    ],
    "Sınıfın kendisini temsil eder.",
    "Java’da 'this' kelimesi, bir sınıfın içinde bulunduğu anlamına gelir ve o sınıfın bir örneğini temsil eder.",
  ),
  Question(
    "Java'da bir sınıfın içinde başka bir sınıfı kullanmak için hangi terim kullanılır?",
    ["Inheritance", "Encapsulation", "Polymorphism", "Composition"],
    "Composition",
    "Java'da 'Composition' (Kompozisyon), bir sınıfın başka bir sınıfı içinde kullanması anlamına gelir. Bu, sınıflar arasında güçlü bir ilişki oluşturarak kodun modülerliğini ve yeniden kullanılabilirliğini artırır.",
  ),
  Question(
    "Emir Hoca en yüksek Flutter proje notunu hangi gruba verecek?",
    ["Slayy", "A Grubu", "B Grubu", "C Grubu"],
    "Slayy",
    "Slayy den iyisi mezarda",
  ),
  Question(
    "'Evrenin Genişleme Hızı' teorisinin geliştiricisi kimdir?",
    ["Isaac Newton", "Galileo Galilei", "Edwin Hubble", "Albert Einstein"],
    "Edwin Hubble",
    "Edwin Hubble, 20. yüzyılın başlarında yaptığı çalışmalarla uzayın genişlediği ve galaksilerin birbirinden uzaklaştığı teorisini geliştirmiştir. ",
  ),
  Question(
    "Hangi terim, bir bilgisayarın aynı anda birden fazla işi yapabilme yeteneği olarak tanımlanır?",
    ["Multitasking", "Multithreading", "Multiprocessing", "Multiprogramming"],
    "Multitasking",
    "Multitasking, bir bilgisayarın aynı anda birden fazla işlem veya görevi yürütebilme yeteneğini ifade eder. Bu, bilgisayarın kaynaklarını verimli bir şekilde kullanarak farklı işleri aynı anda gerçekleştirmesini sağlar.",
  ),
  Question(
    "Hangi terim, bir bilgisayar programında bir hata veya anormal durum oluştuğunda kullanıcıya bilgi veren bir mesajı ifade eder?",
    ["Syntax Error", "Runtime Error", "Logical Error", "Debugging Error"],
    "Runtime Error",
    "Runtime Error, bir programın çalışma zamanında oluşan ve programın normal şekilde işlemesini engelleyen hataları ifade eder.",
  ),
  Question(
    "Bilgisayar ağlarında veri paketlerini yönlendiren cihaz hangisidir?",
    ["Router", "Modem", "Switch", "Hub"],
    "Router",
    "Router, bir ağdaki veri paketlerini belirlenen hedeflere yönlendiren ve ileten cihazdır. Bu cihaz, ağdaki farklı cihazlar arasında veri iletimini sağlar.",
  ),
  Question(
    "Bilgisayar ağlarında, hangi yönlendirme protokolü, paketlerin en kısa ve en hızlı yolu bulmasına yardımcı olur?",
    ["TCP", "IP", "OSPF", "HTTP"],
    "OSPF",
    "OSPF, ağdaki yönlendiriciler arasında en kısa yol bulma sürecinde kullanılan bir içeriğe dayalı yönlendirme protokolüdür. Bu protokol, ağ topolojisini analiz eder, en kısa yolu belirler.",
  ),
  Question(
    "'Cesur Yeni Dünya' romanında insanlar hangi kelimeyi kullanarak duygularını bastırırlar?",
    ["Joy", "Love", "Soma", "Hapiness"],
    "Soma",
    "Soma, insanların duygularını bastırmalarına ve keyiflerini artırmalarına yardımcı olmak için kullanılan bir tür uyuşturucu olarak betimlenir.",
  ),
  Question(
    "Hangi ülke Amazon Ormanı'nın büyük bir kısmına ev sahipliği yapar?",
    ["Brezilya", "Kanada", "Avustralya", "Hindistan"],
    "Brezilya",
    "Amazon Ormanı, Güney Amerika'nın büyük bir bölümünde yer alır ve çoğunlukla Brezilya toprakları içinde bulunur.",
  ),
  Question(
    "Yazılım geliştirme sürecinde 'version control' neyi ifade eder?",
    [
      "Veri tabanı yapılandırılması",
      "Kod sürümlerinin takibi ve yönetimi",
      "İşletim sistemi sürümü",
      "Yazılım geliştirme maliyeti"
    ],
    "Kod sürümlerinin takibi ve yönetimi",
    "Bu sistem, kodun değişikliklerini takip eder, farklı sürümleri karşılaştırır, eski sürümlere geri dönüş yapmayı sağlar ve bir takım işbirliği olanakları sunar.",
  ),
  Question(
    "Java'da bir sınıfın başka bir sınıftan kalıtım almasını sağlayan ifade hangisidir?",
    ["implements", "extends", "implements ve extends", "inherit"],
    "extends",
    "ava'da extends ifadesi, bir sınıfın başka bir sınıftan kalıtım almasını sağlar. Bu ifadeyle bir sınıf, başka bir sınıfın özelliklerini ve davranışlarını miras alabilir ve genişletebilir.",
  ),
  Question(
    "Java'da bir 'interface' içindeki metodlar hangi özellikle tanımlanmalıdır?",
    ["public", "private", "protected", "static"],
    "public",
    "Bir Java interface'i içindeki metodlar varsayılan olarak public olarak tanımlanır. Interface içindeki metodlar otomatik olarak public olduğundan, bu metotları implemente eden sınıflar da bu metotları public olarak tanımlamak zorundadır.",
  ),
  Question(
    "Flutter'da 'Scaffold' widget'ı ne işe yarar?",
    [
      "Uygulama temasını değiştirmek için kullanılır",
      "Anasayfa oluşturmak ve temel yapıyı belirlemek için kullanılır",
      "Veri tabanı işlemlerini gerçekleştirmek için kullanılır",
      "Animasyonları yönetmek için kullanılır"
    ],
    "Anasayfa oluşturmak ve temel yapıyı belirlemek için kullanılır",
    "'Scaffold' widget'ı, bir Flutter uygulamasının temel iskeletini oluşturur. Uygulamanın görsel yapısını sağlar ve birçok standart yapı elemanını içerir.",
  ),
  Question(
    "1924'te, hangi ülke kadınlara ilk kez oy hakkı tanıyan anayasal bir düzenlemeyi kabul etti?",
    ["İsviçre", "Türkiye", "Norveç", "ABD"],
    "İsviçre",
    "1924 yılında İsviçre'de gerçekleşen bir referandum sonucunda, kadınlara federal seçimlerde oy kullanma hakkı tanıyan anayasa değişikliği kabul edildi.",
  ),
  Question(
    "'Mount Vesuvius', hangi şehrin yakınlarında yer alan aktif bir volkandır?",
    ["Napoli", "Atina", "Lizbon", "Madrid"],
    "Napoli",
    "Mount Vesuvius, Napoli'nin yakınlarında bulunan, tarihsel olarak önemli ve aktif bir volkan konumundadır.",
  ),
  Question(
    "Hangi ülke, 'Bollywood' film endüstrisiyle tanınır?",
    ["Türkiye", "Mısır", "Brezilya", "Hindistan"],
    "Hindistan",
    "'Bollywood', Hint sinema endüstrisinin popüler olarak bilinen adıdır. Hint filmlerinin büyük çoğunluğu Mumbai merkezli bu endüstriden gelmektedir. ",
  ),
  Question(
    "Leonardo da Vinci'nin ünlü eseri Mona Lisa hangi şehirde sergilenmektedir?",
    ["Roma", "Floransa", "Paris", "Venedik"],
    "Paris",
    "Mona Lisa, ünlü Louvre Müzesi'nin koleksiyonlarından biri olarak Paris'te bulunmaktadır.",
  ),
  Question(
    "Bir satranç tahtasındaki kaç adet kare vardır?",
    ["64", "48", "72", "81"],
    "64",
    "Bir standart satranç tahtasında 64 kare bulunur. Bu kareler, 8 sıra ve 8 sütundan oluşur; sıra ve sütunlar sırasıyla 1'den 8'e kadar numaralandırılır.",
  ),
  Question(
    "'Çanakkale Savaşı' hangi yıllar arasında gerçekleşmiştir?",
    ["1912-1913", "1914-1918", "1915-1916", "1915-1918"],
    "1915-1916",
    "Çanakkale Savaşı, Mart 1915 ile Ocak 1916 arasında, Osmanlı İmparatorluğu ile Birleşik Krallık ve Fransa gibi İtilaf Devletleri arasında gerçekleşmiş büyük bir savaştır.",
  ),
  Question(
    "Mustafa Kemal Atatürk'ün Silahlı Kuvvetler'de aldığı son rütbe nedir?",
    ["Mirliva", "Ferik", "Mareşal", "Kaymakam"],
    "Mareşal",
    "Türk Ordusu'ndaki Mareşal unvanı, Atatürk'e verilen bir unvandır ve onun askeri kariyerindeki en üst seviyedir. Bu unvan, askeri dehası ve liderliği nedeniyle Atatürk'e verilmiştir.",
  ),
  Question(
    "Google'ın ilk arama motoru algoritması adı nedir?",
    ["Penguin", "Panda", "PageRank", "BackRub"],
    "BackRub",
    "BackRub, Google'ın ilk arama motoru algoritmasıdır ve daha sonra 'PageRank' olarak bilinen bir değerlendirme sistemini kullanmıştır.",
  ),
  Question(
    "'Cybersecurity' (Bilgisayar Güvenliği) alanında kullanılan 'DDoS' saldırısı ne anlama gelir?",
    [
      "Distributed Data over System",
      "Distributed Denial of Service",
      "Dynamic Deployment of Software",
      "Digital Data of Security"
    ],
    "Distributed Denial of Service",
    "'DDoS' saldırısı Distributed Denial of Service olarak adlandırılır. Bu saldırı, bir hizmeti veya ağı kullanılamaz hale getirme amacıyla genellikle çoklu kaynaklardan gerçekleştirilir.",
  ),
  Question(
    "'JavaScript' ile hangi türdeki işlevleri yerine getirebilirsiniz?",
    [
      "Sunucu tabanlı işlemler",
      "İstemci tabanlı işlemler",
      "Dosya tabanlı işlevler",
      "Veri tabanlı işlevler"
    ],
    "İstemci tabanlı işlemler",
    "JavaScript, tarayıcıda çalışabilen bir programlama dilidir ve genellikle web sayfalarında kullanılır. Tarayıcıda çalıştığı için, istemci tabanlı işlemleri yerine getirir.",
  ),
  Question(
    "'Big O Notasyonu' hangi durumu tanımlar?",
    [
      "Algoritmanın en kötü durumdaki performansını ifade eder",
      "En iyi durumdaki algoritma performansını belirtir",
      "Algoritmanın ortalama durumdaki performansını gösterir",
      "Algoritmanın sabit durumdaki performansını belirtir"
    ],
    "Algoritmanın en kötü durumdaki performansını ifade eder",
    "Big O Notasyonu, en kötü senaryoda algoritmanın ne kadar sürede çalışacağını temsil eder ve genellikle algoritmanın zaman veya bellek karmaşıklığını tanımlamak için kullanılır.",
  ),
  Question(
    "'Docker' teknolojisi neyi sağlar?",
    [
      "API entegrasyonu ",
      "Grafik tasarım araçları",
      "Yazılım sürüm kontrolü ",
      "Sanal makine izolasyonu"
    ],
    "Sanal makine izolasyonu",
    "Sanal makine izolasyonu, her bir Docker konteynerinin, bağımsız olarak çalışabilmesini ve uygulamaların hızlı bir şekilde dağıtılmasını sağlar. Bu, yazılım geliştirme ve dağıtım süreçlerini daha verimli hale getirebilir.",
  ),
  Question(
    "'Linux' hangi tür bir işletim sistemidir?",
    [
      "Kapalı kaynak kodlu",
      "Ücretli bir işletim sistemi",
      "Açık kaynak kodlu",
      "Sadece masaüstü kullanımına yönelik "
    ],
    "Açık kaynak kodlu",
    "Linux, açık kaynak kodlu bir işletim sistemidir. Bu, kaynak kodunun genel kullanıma açık olması ve topluluk geliştiricilerinin işletim sistemini özgürce geliştirmesine ve değiştirmesine olanak tanır.",
  ),
  Question(
    "Dünya'nın en derin noktası olan Mariana Çukuru hangi okyanusta bulunur?",
    ["Hint Okyanusu", "Büyük Okyanus", "Arktik Okyanusu", "Atlas Okyanusu"],
    "Büyük Okyanus",
    "Dünya'nın en derin noktası olan Mariana Çukuru, Büyük Okyanus'ta yer almaktadır.",
  ),
  Question(
    "Hangi ülkeler, '100 Yıl Savaşları' ile tarihe geçmiştir?",
    [
      "İngiltere - Fransa",
      "Fransa - İspanya",
      "İngiltere - İskoçya",
      "İspanya - Portekiz"
    ],
    "İngiltere - Fransa",
    "100 Yıl Savaşları, 1337 ile 1453 yılları arasında İngiltere ve Fransa Krallıkları arasında gerçekleşen uzun süreli çatışmalardır.",
  ),
  Question(
    "Dünya Sağlık Örgütü'nün (WHO) merkezi hangi ülkededir?",
    ["ABD", "Fransa", "İsviçre", "İngiltere"],
    "İsviçre",
    "Dünya Sağlık Örgütü, Birleşmiş Milletler çatısı altında 1948 yılında kuruldu. Merkezi İsviçre (Cenevre)'de bulunan ve 150 ülkede faaliyet gösteren DSÖ bünyesinde 7 bini aşkın kişi görev yapıyor.",
  ),*/
];
