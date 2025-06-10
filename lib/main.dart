import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon',
      theme: ThemeData(),
      home: const ECommerceScreen(),
    );
  }
}

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({Key? key}) : super(key: key);

  void navigateToDetail(BuildContext context,
      {required String namaProduk,
      required String harga,
      required double rating,
      required String asal}) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => ProductDetailScreen(
          namaProduk: namaProduk,
          harga: harga,
          rating: rating,
          asalPengiriman: asal,
        ),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amajon Store'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Banner Promo
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'PROMO SPESIAL HARI INI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            // Row di bawah promo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.local_offer, color: Colors.red),
                Text('Gratis Ongkir Seluruh Indonesia'),
                Icon(Icons.local_shipping, color: Colors.green),
              ],
            ),

            const SizedBox(height: 8),

            // Produk 1
            GestureDetector(
              onTap: () => navigateToDetail(
                context,
                namaProduk: 'Sepatu Running',
                harga: 'Rp 750.000',
                rating: 4.5,
                asal: 'Jakarta',
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Sepatu Running',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Rp 750.000',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 6.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Beli',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.orange),
                        SizedBox(width: 4),
                        Text('4.5'),
                        SizedBox(width: 12),
                        Icon(Icons.location_on, size: 16, color: Colors.grey),
                        SizedBox(width: 4),
                        Text('Dikirim dari Jakarta'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Produk 2
            GestureDetector(
              onTap: () => navigateToDetail(
                context,
                namaProduk: 'Tas Ransel',
                harga: 'Rp 350.000',
                rating: 4.2,
                asal: 'Bandung',
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Tas Ransel',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Rp 350.000',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 6.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Beli',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.orange),
                        SizedBox(width: 4),
                        Text('4.2'),
                        SizedBox(width: 12),
                        Icon(Icons.location_on, size: 16, color: Colors.grey),
                        SizedBox(width: 4),
                        Text('Dikirim dari Bandung'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Kategori
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.shopping_bag, color: Colors.blue),
                      SizedBox(height: 8.0),
                      Text('Pakaian'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.watch, color: Colors.blue),
                      SizedBox(height: 8.0),
                      Text('Aksesoris')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.devices, color: Colors.blue),
                      SizedBox(height: 8.0),
                      Text('Elektronik'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}

// Halaman Detail Produk
class ProductDetailScreen extends StatelessWidget {
  final String namaProduk;
  final String harga;
  final double rating;
  final String asalPengiriman;

  const ProductDetailScreen({
    super.key,
    required this.namaProduk,
    required this.harga,
    required this.rating,
    required this.asalPengiriman,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(namaProduk)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Harga: $harga', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Text('Rating: $rating ⭐'),
            const SizedBox(height: 8),
            Text('Dikirim dari $asalPengiriman'),
          ],
        ),
      ),
    );
  }
}
