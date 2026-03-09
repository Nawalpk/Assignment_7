import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DestinationProfileScreen(),
    );
  }
}

class DestinationProfileScreen extends StatelessWidget {
  const DestinationProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1A2F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A1A2F),
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
        title: const Text(
          "Destination Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.share_outlined, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ImageSection(),
            TitleSection(),
            InfoCardsRow(),
            OverviewSection(),
            BookButton(),
            TermsText(),
          ],
        ),
      ),
    );
  }
}

// ===== Image Section =====
class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
          height: 220,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const Positioned(
          right: 16,
          top: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white24,
            radius: 20,
            child: Icon(Icons.favorite_border, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

// ===== Title Section =====
class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: const Color(0xFF0A1A2F),
      child: const Text(
        "Lago di Braies",
        textAlign: TextAlign.center,
        style: TextStyle(
          
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// ===== Info Cards =====
class InfoCardsRow extends StatelessWidget {
  const InfoCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [

          InfoCard(icon: Icons.location_on, text: "120 km"),
          InfoCard(icon: Icons.access_time, text: "2.5 hrs"),
          InfoCard(icon: Icons.payments, text: "\$45.00"),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF14263F),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF334155), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color.fromARGB(255, 8, 63, 214), size: 24),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

// ===== Overview Section =====
class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Overview",
            style: TextStyle(
              color: Color.fromARGB(255, 24, 114, 186),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Experience the heart of the Dolomites. Lago di Braies is one of the most beautiful lakes in South Tyrol, Italy. Famous for its crystal clear emerald waters and the impressive mountain backdrop of the Seekofel.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.white54, size: 16),
              SizedBox(width: 5),
              Text(
                "South Tyrol, Italy",
                style: TextStyle(color: Colors.white54, fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}

// ===== Book Button =====
class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 15, 112, 192),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () {},
          child: const Text(
            "Book Now",
            style: TextStyle(
              color: Colors.white,
             fontSize:16, fontWeight:FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// ===== Terms Text =====
class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "View Terms and Conditions",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 2),
            Container(
              width: 160,
              height: 0.5,
              color: Colors.white54,
            ),
          ],
        ),
      ),
    );
  }
}