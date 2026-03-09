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
      home: DestinationProfile(),
    );
  }
}

class DestinationProfile extends StatelessWidget {
  const DestinationProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A1A2F),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CustomHeader(),
            ImageSection(),
            TitleSection(),
            InfoRow(),
            OverviewSection(),
            BookButton(),
            TermsText(),
          ],
        ),
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.arrow_back, color: Colors.white),
          Text(
            "Destination Profile",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Icon(Icons.share, color: Colors.white),
        ],
      ),
    );
  }
}

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
          right: 15,
          top: 15,
          child: CircleAvatar(
            backgroundColor: Colors.white54,
            child: Icon(Icons.favorite_border, color: Colors.white),
          ),
        )
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "Lago di Braies",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InfoCard(icon: Icons.location_on, text: "120 km"),
          InfoCard(icon: Icons.access_time, text: "2.5 hrs"),
          InfoCard(icon: Icons.attach_money, text: "\$45.00"),
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
        color: const Color(0xff14263F),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Overview",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Experience the heart of the Dolomites. Lago di Braies is one of the most beautiful lakes in South Tyrol, Italy. Famous for its crystal clear waters and mountain backdrop.",
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.white54, size: 16),
              SizedBox(width: 5),
              Text(
                "South Tyrol, Italy",
                style: TextStyle(color: Colors.white54),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            "Book Now",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Text(
        "View Terms and Conditions",
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}