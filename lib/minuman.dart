class Minuman {
  String nama;
  String harga;
  String deskripsi;
  String detail;
  String gambar;
  String waktuBuka;
  List<String> gambarLain;
  List<Map<String, String>> varian;
/*konstruktorr*/
  Minuman(
      {required this.nama,
      required this.harga,
      required this.deskripsi,
      required this.detail,
      required this.gambar,
      required this.waktuBuka,
      required this.gambarLain,
      required this.varian});

  static List<Minuman> dummyData = [
    //mie gacoan
    Minuman(
        nama: 'Seblak',
        harga: 'Rp 25.000',
        deskripsi:
            'Seblak adalah makanan Indonesia yang dikenal berasal dari Bandung, Jawa Barat yang bercita rasa gurih dan pedas. Terbuat dari kerupuk basah yang dimasak dengan sayuran dan sumber protein seperti telur, ayam, boga bahari, atau olahan daging sapi, dan bisa dimix dengan toping sesuai selera yang dimasak dengan kencur.',
        detail:
            'Seblak adalah menu Makanan pedas dengan pilihan berfariasi level.cocok untuk penggemar pedas.tantangan bagi pecinta pedas sejati.Disajikan dengan tambahan toping atau isian sesuai selera.',
        gambar: 'assets/makanan/seblak/1.jpg',
        waktuBuka: '24 jam',
        gambarLain: [
          'assets/makanan/seblak/2.jpg',
          'assets/makanan/seblak/3.jpg',
          'assets/makanan/seblak/1.jpg'
        ],
        varian: [
          {'level_1-2': 'assets/makanan/gacoan/gacoan.jpg'},
          {'level_3-4': 'assets/makanan/gacoan/gacoan1.jpg'},
          {'level_5': 'assets/makanan/gacoan/gacoan2.jpg'},
        ]),

    //siomay
    Minuman(
        nama: 'boba',
        harga: 'Rp 15.000',
        deskripsi:
            ' Boba merupakan bola tapioka yang kenyal, biasanya diolah dengan gula merah atau brown sugar agar terasa manis dan berwarna hitam. Boba, yang juga disebut bola "mutiara", merupakan minuman yang terbuat dari tepung tapioka dengan tambahan teh dan susu (Liu, Cheng dan Wu, 2020).',
        detail:
            'Boba bukan satu-satunya nama untuk racikan minuman manis ini. Kita sudah lebih dulu mengenalnya dengan sebutan black pearl. Ada juga yang menyebutnya sebagai tapioca tea, boba n acai, milk tea, dan pearl tea. Ada yang menyebut nama boba berasal dari Hongkong yang berarti mutiara, ada pula yang menyebut boba berasal dari bahasa slang China yang berarti payudara. Warna boba juga tak selalu hitam.',
        gambar: 'assets/minuman/boba/1.jpg',
        waktuBuka: '24 jam',
        gambarLain: [
          'assets/minuman/boba/1.jpg',
          'assets/minuman/boba/2.jpg',
          'assets/minuman/boba/3.jpg'
        ],
        varian: [
          {'paket_1': 'assets/makanan/siomay/siomay1.jpg'},
          {'paket_2': 'assets/makanan/siomay/siomay2.jpg'},
          {'paket_3': 'assets/makanan/siomay/siomay3.jpg'},
        ]),

  ];

  
}
