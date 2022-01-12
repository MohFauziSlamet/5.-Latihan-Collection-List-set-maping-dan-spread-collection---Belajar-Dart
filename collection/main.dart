void main(List<String> args) {
  // collection -> vairabel yang bisa menyimpan banyak data

  // 1 List
  // didalam list , pengindex an dimulai dari angka 0

  print('Pembahasan LIST');
  List<String> motor = ['Nmax', 'Mio J', 'Jupiter MX'];

  // Mampilkan semua list
  print('Menampilkan semua isi list motor : ' + motor.toString());
  // Mampilkan  list dengan index
  print('Menampilkan ke 1 list motor : ' + motor[0].toString());
  print('Menampilkan ke 2 list motor : ' + motor[1].toString());
  print('Menampilkan ke 3 list motor : ' + motor[2].toString());
  print('\n'); // untuk memberikan jarak enter

  // selain dengan cara diatas , kita juga dapat menampilkan semua dengan cara melakukan
  // perulangan .
  // Pertama dengan menggunakan for

  print('Melakukan perulangan pada list dengan FOR');
  for (int i = 0; i < motor.length; i++) {
    print('Motor ke - ${i + 1} adalah ${motor[i]} ');
  }
  print('\n');

  // didalam list , terdapat methode yang digunakan untuk melakukan perulangan
  // yaitu dengan menggunakan foreach
  print('Melakukan perulangan pada list dengan FOREACH');

  int i = 1; // kita buat variabel untuk penanda urutan
  motor.forEach((element) {
    print('Motor ke - $i adalah ${element}');
    i++;
  });
  print('\n');
  // kekurangan menggunakan foreach dibandingkan for looping ,
  // kita tidak dapat mendapatkan indexnya .
  // untuk mendapatkan indexnya , kita harus membuat sebuah vairabel sendiri

  // selain 2 diatas , ada 1 lagi namanya for in
  // kita juga membutuhkan variabel untuk pengindex penurutannya

  print('Melakukan perulangan pada list dengan for in');
  int j = 1;
  for (String item in motor) {
    print('Motor ke - $j adalah ${item}');
    j++;
  }
  print('\n');

  // =====================================================================

  print('Pembahasan set');

  // set menggunakan tanda kurung kurawal , kalo list menggunakan kurung siku
  Set nilaiMatematikaSet = {8, 9, 8, 10, 7};
  Set nilaiFisikaSet = {9, 10, 7, 5};

  List nilaiMatematikaList = [
    8,
    9,
    10,
    7,
  ];

  // menampilkan set
  print('Nilai set : ${nilaiMatematikaSet}');
  // menampilkan list
  print('Nilai list : ${nilaiMatematikaList}');

  // jika ingin menampilakn per indexnya , ada perbedaan antara list dan set
  // jika list , dapat lamngsung menggunakan indexnya , namun pada set , harus menggunakan elementAt

  // menampilkan set
  print('Nilai set index ke 2 : ${nilaiMatematikaSet.elementAt(2)}');
  // menampilkan list
  print('Nilai list index ke 2 : ${nilaiMatematikaList[2]}');
  print('\n');

  // didalam set , ada sebuah methode union (gabungan)
  // yaitu kita bisa menggabungkan dua buah set , dan nilainya tidak
  // akan terduplikat. nilai yang sama akan ditampilkan 1x
  print('Nilai Matematika ${nilaiMatematikaSet}');
  print('Nilai Fisika ${nilaiFisikaSet}');
  print('Union dari nilaiMatematikaSet dengan nilaiFisikaSet');
  print(nilaiMatematikaSet.union(nilaiFisikaSet));

  // Intersection adalah nilai yang sama antara dua set , yang akan ditampilkan
  print('Intersection dari nilaiMatematikaSet dengan nilaiFisikaSet');
  print(nilaiMatematikaSet.intersection(nilaiFisikaSet));
  print('\n');

  print('Pembahasan Map');
  // map
  // ditandai dengan penggunaan key : dan value
  Map nilai = {
    'matematika': [
      8,
      9,
      10,
      7,
    ],
    'fisika': [
      8,
      9,
      10,
      7,
    ]
  };

  print(nilai);
  print('Mengambil nilai matematika saja : ' + nilai['matematika'].toString());
  print('Mengambil nilai matematika berdasarkan indexnya : ' +
      nilai['matematika'][0].toString());
  print('\n');

  print('Pembahasan spread collection');
  // spread colection adalah penggabungan antara 2 list maupun set , menjadi suatu
  // data baru .
  print('Data List');
  List data = [1, 2, 3, 4, 5];
  List copyData = [...data, 6];
  // cara menggunakan spread collection dg menambahkan titik 3 kali
  print("List copyData $copyData");
  print("Mengambil copyData dengan index ${copyData[0]}");
  print('\n');

  // spread collection juga dapat dilakukan pada type data set
  print('Data Set');
  Set dataSet = {1, 2, 3, 4, 5};
  Set copyDataSet = {...data, 6};
  // cara menggunakan spread collection dg menambahkan titik 3 kali
  print("List copyData $copyDataSet");
  print("Mengambil copyData dengan index ${copyData[0]}");
}
