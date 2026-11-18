import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets.dart';

class SpeciesScreen extends StatelessWidget {
  const SpeciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
      children: [
        Text('Species & Nursery', style: AquaText.manrope(24, weight: FontWeight.w800)),
        Text(
          'Guidelines for the three carp species and for raising fingerlings.',
          style: AquaText.manrope(13, weight: FontWeight.w500, color: AquaColors.variant, height: 1.35),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Know your fish', trailing: '3 niches'),
        const SizedBox(height: 10),
        const _FishCard(
          image: AquaImages.catlaNursery,
          name: 'Catla',
          latin: 'Catla catla',
          zone: 'Surface feeder',
          body: 'Predominantly a surface feeder. Food is mainly zooplankton and other naturally available food.',
        ),
        const _FishCard(
          image: AquaImages.rohuNursery,
          name: 'Rohu',
          latin: 'Labeo rohita',
          zone: 'Column feeder',
          body: 'Mainly a middle-water-column feeder. Food includes plant material, algae, and other natural food.',
        ),
        const _FishCard(
          image: AquaImages.mrigalNursery,
          name: 'Mrigal',
          latin: 'Cirrhinus mrigala',
          zone: 'Bottom feeder',
          body: 'A bottom-oriented feeder. Food is detritus and bottom-associated organisms.',
        ),
        const SizedBox(height: 8),
        const SectionTitle('Three species. Three feeding zones.'),
        const SizedBox(height: 4),
        Text('Better pond utilization', style: AquaText.inter(11)),
        const SizedBox(height: 10),
        const _Zone(
          color: AquaColors.surfaceBlue,
          background: AquaColors.surfaceBlueBg,
          title: 'Catla • Surface',
          body: 'Surface layer. Zooplankton and other food near the top of the pond.',
        ),
        const _Zone(
          color: AquaColors.secondary,
          background: Color(0xFFC8E6C9),
          title: 'Rohu • Middle water',
          body: 'Middle column. Plant material, algae, and other natural food.',
        ),
        const _Zone(
          color: AquaColors.amber,
          background: AquaColors.amberBg,
          title: 'Mrigal • Pond bottom',
          body: 'Bottom. Detritus and bottom-associated organisms.',
        ),
        const SizedBox(height: 8),
        const AquaCard(
          color: AquaColors.low,
          child: Text(
            'Catla, Rohu, and Mrigal feed in different parts of the same pond. Natural food still needs suitable water and careful supplementary feeding.',
            style: TextStyle(color: AquaColors.onSurface, height: 1.35),
          ),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Three-stage rearing'),
        const SizedBox(height: 10),
        const AquaCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _Stage(n: '1', title: 'Spawn → Fry', note: 'Nursery'),
                  _Stage(n: '2', title: 'Fry → Fingerling', note: 'Rearing'),
                  _Stage(n: '3', title: 'Grow-out fish', note: 'Grow-out'),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Nursery stage: spawn to fry. Rearing stage: fry to fingerling. Grow-out stage: fingerling to marketable fish. Advanced fingerlings around 8–12 cm are preferable for grow-out stocking.',
                style: TextStyle(color: AquaColors.variant, height: 1.35),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Nursery management', trailing: '4 steps'),
        const SizedBox(height: 10),
        const _Step(
          n: '1',
          title: 'Seed procurement',
          badge: 'General',
          body:
              'Purchase healthy fish seed from a reliable hatchery. Choose active, uniform seed. Reject seed that is injured or swimming abnormally.',
        ),
        const _Step(
          n: '2',
          title: 'Nursery pond preparation',
          badge: 'Before stocking',
          body:
              'Remove unwanted fish and predators. Remove excessive aquatic weeds. Check pond bunds and water inlets. Apply lime and fertilizers based on soil and water conditions. Encourage natural food production.',
        ),
        const _Step(
          n: '3',
          title: 'Nursery rearing',
          badge: 'Daily checks',
          body:
              'Maintain suitable water quality. Provide appropriate supplementary feed. Monitor growth, mortality, and stocking density. Do not substitute rice husk for rice bran.',
        ),
        const _Step(
          n: '4',
          title: 'Fingerling development',
          badge: 'Before transfer',
          body:
              'Advanced fingerlings around 8–12 cm are preferable for grow-out stocking. Grade, inspect, and acclimatize the fish before transfer.',
        ),
        const SizedBox(height: 8),
        const AquaCard(
          child: Text(
            'Around 8–12 cm is a general preferred size for stocking a grow-out pond. Measure the fish you stock. Do not treat that size as a result from one farm.',
            style: TextStyle(color: AquaColors.variant, height: 1.35),
          ),
        ),
      ],
    );
  }
}

class _FishCard extends StatelessWidget {
  const _FishCard({
    required this.image,
    required this.name,
    required this.latin,
    required this.zone,
    required this.body,
  });

  final String image;
  final String name;
  final String latin;
  final String zone;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AquaCard(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AquaPhoto(url: image, height: 76, width: 76),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: AquaText.manrope(16, weight: FontWeight.w800)),
                  Text(latin, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.outline).copyWith(fontStyle: FontStyle.italic)),
                  const SizedBox(height: 4),
                  ChipLabel(zone),
                  const SizedBox(height: 6),
                  Text(body, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.35)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Zone extends StatelessWidget {
  const _Zone({
    required this.color,
    required this.background,
    required this.title,
    required this.body,
  });

  final Color color;
  final Color background;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: background, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AquaText.manrope(14, weight: FontWeight.w800, color: color)),
          Text(body, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.3)),
        ],
      ),
    );
  }
}

class _Stage extends StatelessWidget {
  const _Stage({required this.n, required this.title, required this.note});

  final String n;
  final String title;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: AquaColors.primary,
            child: Text(n, style: AquaText.inter(12, color: Colors.white)),
          ),
          const SizedBox(height: 4),
          Text(title, textAlign: TextAlign.center, style: AquaText.inter(10, color: AquaColors.onSurface)),
          Text(note, textAlign: TextAlign.center, style: AquaText.inter(10)),
        ],
      ),
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({required this.n, required this.title, required this.badge, required this.body});

  final String n;
  final String title;
  final String badge;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AquaCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: AquaColors.primary,
                  child: Text(n, style: AquaText.inter(11, color: Colors.white)),
                ),
                const SizedBox(width: 8),
                Expanded(child: Text(title, style: AquaText.manrope(14, weight: FontWeight.w700))),
                ChipLabel(badge),
              ],
            ),
            const SizedBox(height: 8),
            Text(body, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.35)),
          ],
        ),
      ),
    );
  }
}
