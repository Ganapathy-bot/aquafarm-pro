import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets.dart';

class PondScreen extends StatelessWidget {
  const PondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
      children: [
        const ChipLabel('Grow-out guidance'),
        const SizedBox(height: 8),
        Text('Scientific Pond Management', style: AquaText.manrope(24, weight: FontWeight.w800)),
        Text(
          'Feeding, pond care, and water-quality guidelines.',
          style: AquaText.manrope(13, weight: FontWeight.w500, color: AquaColors.variant, height: 1.35),
        ),
        const SizedBox(height: 14),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              const AquaPhoto(url: AquaImages.feed, height: 150, width: double.infinity, radius: 0),
              Positioned(
                left: 12,
                bottom: 12,
                child: Text(
                  'Rice bran and groundnut oil cake',
                  style: AquaText.inter(12, color: Colors.white, weight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        const SectionTitle('Fish feed and nutrition'),
        const SizedBox(height: 10),
        AquaCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Traditional supplementary diet', style: AquaText.manrope(15, weight: FontWeight.w800)),
              const SizedBox(height: 4),
              const ChipLabel('1:1 by weight'),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(child: _Part(title: 'Rice bran', note: '1 part. Not rice husk.')),
                  SizedBox(width: 8),
                  Expanded(child: _Part(title: 'Groundnut oil cake', note: '1 part, by weight.')),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Rice bran and rice husk are different materials. Do not substitute rice husk for rice bran. Feed should be fresh and free from fungal contamination. Natural pond food should complement supplementary feeding.',
                style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.35),
              ),
              const SizedBox(height: 8),
              Text(
                'Use feeding trays so uneaten feed can be seen. Adjust the next ration from the fish response.',
                style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.35),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Daily feed example'),
        const SizedBox(height: 10),
        const AquaCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daily feed = estimated fish biomass × feeding rate / 100',
                style: TextStyle(fontWeight: FontWeight.w700, color: AquaColors.onSurface, height: 1.35),
              ),
              SizedBox(height: 8),
              ChipLabel('Illustrative example. Not farm data.'),
              SizedBox(height: 10),
              Row(
                children: [
                  _Stat(label: 'Biomass', value: '100 kg'),
                  _Stat(label: 'Rate', value: '2%'),
                  _Stat(label: 'Daily feed', value: '2 kg'),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Feeding rates vary with fish size, water quality, and feeding response. The 2% figure is an example, not a fixed rate. Do not use 50% of total fish biomass as the routine daily feed quantity.',
                style: TextStyle(color: AquaColors.variant, height: 1.35),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Pond management'),
        const SizedBox(height: 10),
        const AquaCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'A useful water depth for carp grow-out is about 1.5–2.5 m.',
                style: TextStyle(fontWeight: FontWeight.w700, color: AquaColors.onSurface, height: 1.35),
              ),
              SizedBox(height: 6),
              Text(
                'Choose the depth for the site and the pond design. Measure the pond in use.',
                style: TextStyle(color: AquaColors.variant, height: 1.35),
              ),
              SizedBox(height: 8),
              Text('Maintain a suitable stocking density.', style: TextStyle(color: AquaColors.onSurface)),
              Text('Prevent excessive accumulation of organic matter.', style: TextStyle(color: AquaColors.onSurface)),
              Text('Maintain proper inlet and outlet structures.', style: TextStyle(color: AquaColors.onSurface)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Water quality', trailing: 'Guidelines'),
        const SizedBox(height: 10),
        const Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _Quality(title: 'Dissolved oxygen', value: 'About 5 mg/L or higher', note: 'Check in the early morning.'),
            _Quality(title: 'pH', value: 'About 6.5–8.5', note: 'Monitor regularly.'),
            _Quality(title: 'Temperature', value: 'Record it', note: 'Note changes and the fish response.'),
            _Quality(title: 'Ammonia', value: 'Monitor', note: 'Watch for toxic accumulation.'),
          ],
        ),
        const SizedBox(height: 10),
        const AquaCard(
          color: Color(0xFFFFF4E8),
          child: Text(
            'Caution: low oxygen, excessive feeding, and sudden changes in water quality can affect fish survival.',
            style: TextStyle(color: AquaColors.tertiary, height: 1.35, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Pond protection'),
        const SizedBox(height: 10),
        const _Protect(icon: Icons.grass, title: 'Grass-covered embankments', body: 'Grass on the bunds helps prevent soil erosion.'),
        const _Protect(icon: Icons.landscape_outlined, title: 'Strong pond bunds', body: 'Sound bunds, with drainage, are needed for flood protection.'),
        const _Protect(icon: Icons.filter_alt_outlined, title: 'Screened inlet', body: 'Screen the inlet so unwanted fish and debris do not enter.'),
        const _Protect(icon: Icons.output, title: 'Screened overflow outlet', body: 'A screened outlet lets excess water leave without letting fish escape.'),
      ],
    );
  }
}

class _Part extends StatelessWidget {
  const _Part({required this.title, required this.note});

  final String title;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AquaColors.low,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AquaText.manrope(13, weight: FontWeight.w700)),
          Text(note, style: AquaText.inter(10, color: AquaColors.variant)),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(label, style: AquaText.inter(10)),
          Text(value, style: AquaText.manrope(16, weight: FontWeight.w800, color: AquaColors.primary)),
        ],
      ),
    );
  }
}

class _Quality extends StatelessWidget {
  const _Quality({required this.title, required this.value, required this.note});

  final String title;
  final String value;
  final String note;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: AquaCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AquaText.inter(10)),
            const SizedBox(height: 4),
            Text(value, style: AquaText.manrope(14, weight: FontWeight.w800, color: AquaColors.primary)),
            const SizedBox(height: 4),
            Text(note, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.3)),
          ],
        ),
      ),
    );
  }
}

class _Protect extends StatelessWidget {
  const _Protect({required this.icon, required this.title, required this.body});

  final IconData icon;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AquaCard(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: AquaColors.primary),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AquaText.manrope(14, weight: FontWeight.w700)),
                  Text(body, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.3)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
