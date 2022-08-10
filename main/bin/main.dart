// List merupakan sebuah kumpulan data , dapat menyimpan banyak Data
import 'dart:io';

main(List<String> argument) {
  List<int> listAa = [1, 2, 3];

  /// Cara mengkases Data pada list
  int a2 = listAa[0]; //[0] artinya index ke 0
  stdout.write("Menampilkan isi list dengan penampung = $a2 \n \n");

  stdout.write(
      'Menampilkan isi list tanpa penampung dengan nomor index tertentu = ${listAa[0].toString()} \n \n');

  ///
  print('-- cara mengganti isi data pada list ---');
  List<int> listBb = [10, 20, 30, 40];
  print('Isi list sebelum berubah : ' + listBb.toString());
  listBb[0] = 2;
  int b2 = listBb[0];
  print('Isi list pada index ke 0 diubah menjadi : ' + b2.toString());
  print('Isi list setelah berubah : $listBb \n');

  ///
  print('--- Cara melakukan perulangan / iterasi pada list---');
  print('isi listAa ' + listAa.toString());
  print('-- cara pertama memakai for --');
  print('Dengan menggunakan format index += 1');
  for (int index = 0; index < listAa.length; index += 1) {
    print('Angka ${listAa[index].toString()}');
  }
  print('\n');

  ///
  print('Dengan menggunakan format index = index + 1');
  for (int index = 0; index < listAa.length; index = index + 1) {
    print('Angka ' + listAa[index].toString());
  }
  print('\n');

  print('Dengan menggunakan format index ++');
  for (int index = 0; index < listAa.length; index++) {
    print('Angka ' + listAa[index].toString());
  }
  print('\n');

  print('-- cara kedua memakai for - in --');
  /*methode in , artinya isi dari list ... (listAa)
  int bilangan hny sebuah parameter buatan Anonymous Function
  untuk mengakses listAa */
  for (int bilangan in listAa) {
    print('bilangan ' + bilangan.toString());
  }
  print('\n');

  print('-- cara ketiga memakai for each --');
  /*a dengan for in , forEach juga memakai fungsi sbg parameternya (yang berisi bilang int)
  nama number , hanya  sebuah parameter buatan Anonymous Function yang akan diisi oleh nilai yang ada
  pada listAa
  */
  listAa.forEach((number) {
    print('number ' + number.toString());
  });
  print('\n');

  print('--------------------------------------------');
  print('-- Operasi operasi yang dapat dilakukan pada list --');
  List<int> listCc = [];
  print('isi list yang masih kosong ' + listCc.toString());
  print('- menambahkan isi list dengan Function add -');
  listCc.add(0); // hanya menambahkan 1 value saja pada index ke'0'
  print('isi list yang baru' + listCc.toString() + '\n');

  //function addAll juga dapat menambahkan dari isi list , list yang lain
  print('- menambahkan isi list dengan Function addAll -');
  print('isi list sebelumnya ' + listCc.toString());
  listCc.addAll(listAa);
  print('isi list yang baru' + listCc.toString());
  print('\n');

  /* atau menambahkan data secara langsung juga bisa dan
  otomatis ditempatkan pada index yang terakhir*/
  print('--------------------------------------------');
  print('isi list sebelumnya ' + listCc.toString());
  listCc.addAll([4, 5, 6]);
  print('di isi dengan 4, 5, 6');
  print('isi list yang baru ' + listCc.toString() + '\n');
  print('\n');

  /* insert untuk menyisipkan data yang bisa kita atur posisi
  penempatannya dan value nya , jadi susunan nya "(index),(value)" .
  bisa juga menyisipkan list yang lain kedalam list yang baru */
  print('- menambahkan isi list dengan Function insert -');
  print('isi list sebelumnya ' + listCc.toString());
  listCc.insert(7, 7);
  print('di isi dengan nilai 7 , pada index ke 7');
  print('isi list yang baru' + listCc.toString() + '\n');
  print('\n');

  /* untuk menyisipkan nilai didalam list pada index brapapun
  dan dapat lebih dari satu nilai*/
  print('- menambahkan isi list dengan Function insertAll -');
  print('isi list sebelumnya ' + listCc.toString());
  print('di isi dengan nilai 8 dan 9 , pada index ke 8');
  listCc.insertAll(8, [8, 9]);
  print('isi list yang baru' + listCc.toString() + '\n');
  print('\n');

  /* menghapus nilai didalam list , langsung ke arah nilai yang
  ingin dihapus. dan bila ada nilai yang sama. maka yang dihapus adalah nilai yang
  pada index pertama*/
  print('- Menghapus nilai dengan menggunakan perintah Remove -');
  List<int> ListDd = [1, 2, 3, 4, 5, 6, 1];
  print('Isi List Dd sebelum dihapus ' + ListDd.toString());
  ListDd.remove(1);
  print('isi List Dd setelah dihapus ' + ListDd.toString() + '\n');
  print('\n');

  // menghapus nilai yang terakhir dalam suatu list
  print('- Menghapus nilai dengan menggunakan perintah Remove Last -');
  List<int> ListEe = [1, 2, 3, 4, 5, 6];
  print('Isi List Ee sebelum dihapus ' + ListEe.toString());
  ListEe.removeLast();
  print('isi List Ee setelah dihapus' + ListEe.toString() + '\n');
  print('\n');

  /// menghapus nilai berdasarkan nomor index yang keberapa
  print('- Menghapus nilai dengan menggunakan perintah RemoveAt -');
  List<int> ListFf = [1, 2, 3, 4, 5, 6];
  print('Isi List Ff sebelum dihapus ' + ListFf.toString());
  ListFf.removeAt(4); // 4 merupakan nomor urut index yang dihapus
  print('isi List Ff setelah dihapus' + ListFf.toString() + '\n');
  print('\n');

  /* menghapus nilai berdasarkan nomor index yang ke keberapa sampai
  batas sebelum index yang diinputkan(inputan 6 , maka batas nya adl
  5 yang dihapus) . apabila batas akhir melebihi index yang ada
  pada list , maka akan terjadi error pada saat runing*/
  print('- Menghapus nilai dengan menggunakan perintah RemoveRenge -');
  List<int> listGg = [1, 2, 3, 4, 5, 6];
  print('Isi List Gg sebelum dihapus ' + listGg.toString());
  listGg.removeRange(1, 6);
  print('isi List Gg setelah dihapus' + listGg.toString() + '\n');
  print('\n');

  /* methode removeWhere, memerlukan sebuah fungsi.
   fungsi dibawah,  jika si number bernilai true ,
   maka number tsb bernilai  (genap) akan dihapus dari list*/
  print('- Menghapus nilai dengan menggunakan perintah RemoveWhere -');
  List<int> listHh = [1, 2, 3, 4, 5, 6];
  print('Isi List Hh sebelum dihapus ' + listHh.toString());
  listHh.removeWhere((number) => number % 2 == 0);
  print('Isi list Hh setelah dihapus : ' + listHh.toString());
  print('\n');

  /*perintah contains , berfungsi untuk mengecek apakah value yang
  diinput kan ada didalam list yang di cek . contains harus dikombinasikan
  dengan percabangan untuk menampilkan sebuah hasil ya atau tidak*/

  if (listHh.contains(4)) {
    print('Yaa benar , ada value tersebut\n');
  } else {
    print('Nilai tersebut tidak ada didalam list');
  }
  print('\n');

  print(
      '- Mengambil nilai value dari list lain untuk dimasukan ke list baru -');
  List<int> listIi = [1, 2, 3, 4, 5, 6];
  List<int> listJj = [1, 2];
  /*meskipun listJj di isi value , nilai list
  Jj tidak akan ditampilkan */
  listJj = listIi.sublist(2, 6);
  print('isi list Jj ' + listJj.toString() + '\n');
  print('\n');

  print('- Menghapus data dengan menggunakan function clear -');
  List<num> listLl = [0, 1, 2, 3, 4, 5, 6, 7];
  print('Isi list sebelum di clear ' + listLl.toString());
  // menghapus semua yang ada pada list
  listLl.clear();
  print('List setelah di clear ' + listLl.toString() + '\n');
  print('\n');

  /*
  methode sort() merupakan default pada bahasa dart. namun methode tersebut
  memiliki fungsi opsional positional parameter, yang memnungkinkan kita dpt
  mengatur urutan dari besar ke kecil .
   */
  print('-------------------------------------------');
  print('- Mengurutkan data pada list -');
  List<int> listKk = [3, 2, 4, 1, 5, 7, 6];
  print('ListKk sebelum diurtukan ' + listKk.toString());
  listKk.sort((a, b) => a - b);
  print('ListKk setelah diurutkan ' + listKk.toString() + '\n');

  print('---------------------------------------------');
  stdout.write(' - mengecek isi list dengan function every - \n ');
  List<int> listMm = [1, 2, 3, 4, 5, 6, 7];

  listMm.removeWhere((element) => element % 2 == 0);

  if (listMm.every((angka) => angka % 2 != 0)) {
    print('Yaa , semua angka ganjil');
  } else {
    print('Maaf , tidak semua angka ganjil');
  }
  listMm.forEach((element) {
    print(element);
  });

  stdout.write('----------------------------------------\n');
  print('- Mengecek apakah list kosong atau tidak -');
  List<num> listNn = [1, 2, 3, 4, 5, 6, 7, 8];
  // listNn.clear();
  if (listNn.isEmpty) {
    print('isi list kosong' + listNn.toString());
  } else {
    print('list ada isi nya');
  }
  listNn.forEach((element) {
    print('angka ' + element.toString());
  });

  stdout.write('----------------------------------------\n');
  print('- Mengecek apakah list kosong atau tidak -');
  List<num> listOo = [1, 2, 3, 4, 5, 6, 7, 8];
  // listOo.clear();

  if (listOo.isNotEmpty) {
    print('isi list tidak kosong' + listOo.toString());
  } else {
    print('list tidak ada isi nya');
  }

  listOo.forEach((element) {
    print('angka ' + element.toString());
  });

  stdout.write('----------------------------------------\n');
  print('- mengecek isi list dengan menggunakan function set - ');
  List<int> listPp = [1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6];

  listPp.sort();
  print(listPp);

  Set<int> s;
  /* list yang mengunakan perintah set , tidak akan ada data yang
  memiliki nilai yang sama dalam suatu list */
  s = listPp.toSet();

  s.forEach((element) {
    print('isi list setelah menggunakan function set ' + element.toString());
  });

  stdout.write('----------------------------------------\n');
  print('----- Maping sebuah list -----');
  List<int> daftar = [1, 2, 3, 4, 5, 6];
  List<String> listDaftar = [];

  print('Cara pertama');
  daftar.forEach((nilai) {
    listDaftar.add('isi ' + nilai.toString());
  });

  listDaftar.forEach((str) {
    print(str);
  });

  print('---------------------------');
  print('cara kedua');
  listDaftar = daftar.map((number) => 'isi ' + number.toString()).toList();
  listDaftar.forEach((element) {
    print(element);
  });
}
