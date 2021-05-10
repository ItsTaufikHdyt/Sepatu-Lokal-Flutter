import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Brodo",
      price: 250000,
      size: 12,
      description: "Biasa dikenal dengan koleksi sepatu outdoor seperti boots, ternyata Brodo juga memiliki koleksi sneakers yang tidak kalah berkualitasnya. Nama koleksi sneakers terbaru dari Brodo adalah Fujin. Terdapat dua varian Fujin yang bisa kamu pilih sebagai sepatu andalanmu sehari-hari, yaitu varian all black dan juga hitam dengan sol berwarna putih.Sepatu ini memudahkan mobilitas kamu agar terasa lebih ringan tetapi tetap memberikan support yang baik untuk kaki.",
      image: "assets/images/brodo.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Compass",
      price: 275000,
      size: 8,
      description: "Compass merupakan merk sepatu buatan Indonesia yang sudah ada sejak tahun 1998 dan berawal dari bisnis keluarga di kota Bandung. Merk ini berspesialisasi di tipe sneakers kanvas dengan perpaduan desain klasik dan modern.Kekhasan sneakers keluaran Compass adalah garis putih yang dikatakan melambangkan Gazelle, binatang penuh kecepatan yang terus melaju ke depan.Tipe yang tersedia dan digemari oleh masyarakat di seluruh Indonesia antara lain adalah Gazelle Hi, Gazelle Low, dan edisi Vintage yang dijual terbatas dalam kesempatan-kesempatan tertentu saja",
      image: "assets/images/compass.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Eagle",
      price: 150000,
      size: 10,
      description: "Untuk urusan sepatu olahraga, pria bisa percayakan dengan brand lokal sepatu Indonesia ini. Sudah sejak 1986, Eagle menghadirkan model sneakers yang cocok dikenakan untuk pria aktif dinamis. Sampai sekarang, Eagle dirasa paling pas untuk dipakai ketika sedang berolahraga mulai dari running, jogging, tenis sampai futsal. Kisaran harga dari sepatu sneakers Eagle sekitar Rp260 ribuan.",
      image: "assets/images/eagle.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "GeoffMax",
      price: 350000,
      size: 11,
      description: "Geoff Max Footwear (GMX) merupakan merk lokal yang juga memproduksi sneakers kanvas dengan variasi warna dan tipe yang bisa kamu pilih. Apabila dilihat sekilas, desain sepatu ini mirip dengan sepatu keluaran Amerika Serikat, Vans. Dengan harga yang sangat terjangkau jauh, kamu bisa mendapatkan sneakers dengan salah satu kualitas terbaik.Jika menggunakan sepatu ini, penampilan kamu dijamin semakin kece!",
      image: "assets/images/geoffmax.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Johnson",
      price: 300000,
      size: 12,
      description: "Satu lagi sneaker high top dengan nuansa hijau yang menggoda. Johnson menjadi sebuah merek lokal asal Bandung yang meramaikan pasar sepatu lokal. Seperti sepatu lokal yang banyak beredar, Johnson juga memakai teknologi vulcanized yang menguatkan sol sepatu karena dibantu dengan proses pemanasan. Seri Galaxy Pro dengan warna green ini menarik dan gak kalah keren dari Compass Pop Meets Pop. Dengan sedikit balutan rubber gum yang membuat semakin gaya, sepatu ini juga dibanderol dengan harga yang masuk akal yakni Rp265.000 saja.",
      image: "assets/images/johnson.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Ventela",
    price: 450000,
    size: 12,
    description: "Ventela® Shoes mulai di perkenalkan pada tahun 2017 oleh William Ventela, seorang pemilik pabrik sepatu vulkanisir sejak tahun 1989 di Bandung, Jawa Barat. Ventela® Shoes memiliki berbagai macam jenis dan model yang cocok di gunakan untuk berbagai jenis kegiatan. Setiap pasang Ventela® Shoes melalui proses yang panjang dan detail, mulai dari pemilihan material, proses produksi hingga pemeriksaan kualitas yang sangat ketat. Hal ini dilakukan agar kualitas Ventela® Shoes terjaga dengan baik. Dengan sumber daya yang berlimpah Ventela® Shoes mampu memproduksi sepatu dengan kuantitas besar dan kualitas terbaik sehingga semua kalangan dapat memiliki sepatu berkualitas tinggi dengan harga yang terjangkau.",
    image: "assets/images/ventela.png",
    color: Color(0xFFAEAEAE),
  ),
];
