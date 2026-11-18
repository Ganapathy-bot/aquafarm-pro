import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.onOpen});

  final ValueChanged<int> onOpen;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: AquaColors.low,
            borderRadius: BorderRadius.circular(99),
          ),
          child: Row(
            children: [
              const Icon(Icons.water_drop_outlined, size: 16, color: AquaColors.primary),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  'Smart Knowledge. Healthy Fish. Better Harvests.',
                  style: AquaText.inter(11, color: AquaColors.primary, weight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Stack(
            children: [
              const AquaPhoto(url: AquaImages.pond, height: 210, width: double.infinity, radius: 0),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black.withValues(alpha: 0.05), Colors.black.withValues(alpha: 0.62)],
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 12,
                right: 12,
                child: ChipLabel('Freshwater pond', color: AquaColors.onPrimary, background: Color(0xCC00685D)),
              ),
              Positioned(
                left: 14,
                right: 14,
                bottom: 14,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GENERAL CARP GUIDE', style: AquaText.inter(10, color: Colors.white70)),
                    const SizedBox(height: 4),
                    Text(
                      'Grow Better. Harvest Smarter.',
                      style: AquaText.manrope(22, weight: FontWeight.w800, color: Colors.white, height: 1.15),
                    ),
                    Text(
                      'Your practical guide to scientific fish farming.',
                      style: AquaText.manrope(12, weight: FontWeight.w500, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            const Icon(Icons.water, size: 18, color: AquaColors.primary),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                'Composite carp culture',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AquaText.inter(12, color: AquaColors.onSurface),
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: FilledButton.icon(
                onPressed: () => onOpen(1),
                style: FilledButton.styleFrom(
                  backgroundColor: AquaColors.primary,
                  foregroundColor: Colors.white,
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(99)),
                ),
                icon: const Icon(Icons.arrow_forward, size: 16),
                label: Text(
                  'Explore Cultivation',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AquaText.inter(12, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        Row(
          children: [
            Expanded(
              child: Text(
                'Farm Overview',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AquaText.manrope(16, weight: FontWeight.w800),
              ),
            ),
            const SizedBox(width: 8),
            const ChipLabel('Polyculture Setup'),
            const SizedBox(width: 8),
            Text('General', style: AquaText.inter(10)),
          ],
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            Expanded(
              child: _PondCard(
                label: 'Nursery',
                title: 'Nursery Pond',
                area: 'Fry stage',
                detail: 'Fish seed rearing and fingerling development',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: _PondCard(
                label: 'Grow-out',
                title: 'Grow-out Pond',
                area: 'Market size',
                detail: 'Fish growth and market-oriented production',
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const AquaCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.layers_outlined, color: AquaColors.primary, size: 20),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'A nursery pond and a grow-out pond',
                      style: TextStyle(fontWeight: FontWeight.w700, color: AquaColors.onSurface),
                    ),
                  ),
                  ChipLabel('Two ponds', color: AquaColors.secondary),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: _Plot(title: 'Nursery', area: 'Seed rearing')),
                  SizedBox(width: 8),
                  Expanded(child: _Plot(title: 'Grow-out', area: 'Market fish', filled: true)),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        const SectionTitle('Fish Species', trailing: '3 feeding zones'),
        const SizedBox(height: 4),
        Text('Ecological niche polyculture', style: AquaText.inter(11)),
        const SizedBox(height: 10),
        const _SpeciesRow(
          image: AquaImages.catla,
          name: 'CATLA',
          latin: 'Catla catla',
          habit: 'Broad head, upturned mouth, zooplankton feeder',
          zone: 'Surface feeder',
          zoneColor: AquaColors.surfaceBlue,
          zoneBg: AquaColors.surfaceBlueBg,
        ),
        const _SpeciesRow(
          image: AquaImages.rohu,
          name: 'ROHU',
          latin: 'Labeo rohita',
          habit: 'Streamlined body, column feeder, plant matter and other natural food',
          zone: 'Middle-column feeder',
          zoneColor: AquaColors.secondary,
          zoneBg: Color(0xFFC8E6C9),
        ),
        const _SpeciesRow(
          image: AquaImages.mrigal,
          name: 'MRIGAL',
          latin: 'Cirrhinus mrigala',
          habit: 'Sub-terminal mouth, detritivore and benthic grazer',
          zone: 'Bottom feeder',
          zoneColor: AquaColors.amber,
          zoneBg: AquaColors.amberBg,
        ),
        const SizedBox(height: 8),
        const SectionTitle('Practical advisory and learning'),
        const SizedBox(height: 10),
        _Module(
          icon: Icons.spa_outlined,
          title: 'Fish Seed & Nursery Management',
          body: 'Hatchery fry, nursery preparation, and stocking care',
          tags: const ['Spawn to fingerling', 'Seed to fingerling'],
          onTap: () => onOpen(1),
        ),
        _Module(
          icon: Icons.restaurant_outlined,
          title: 'Feed & Nutrition Management',
          body: 'Rice bran and groundnut oil cake, 1:1 by weight',
          tags: const ['Rice bran + oil cake', 'Rate depends on size'],
          onTap: () => onOpen(2),
        ),
        _Module(
          icon: Icons.water_outlined,
          title: 'Pond & Water Quality Management',
          body: 'Dissolved oxygen, pH, temperature, and ammonia',
          tags: const ['Dissolved oxygen', 'Early morning check'],
          onTap: () => onOpen(2),
        ),
        _Module(
          icon: Icons.health_and_safety_outlined,
          title: 'Fish Health & Harvesting',
          body: 'Disease signs and harvest steps',
          tags: const ['Health', 'Harvest'],
          onTap: () => onOpen(3),
        ),
        const AquaCard(
          color: AquaColors.low,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.lightbulb_outline, color: AquaColors.primary),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Daily carp tip: check the pond surface at dawn for fish gasping, which can indicate low dissolved oxygen.',
                  style: TextStyle(color: AquaColors.onSurface, height: 1.35),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PondCard extends StatelessWidget {
  const _PondCard({
    required this.label,
    required this.title,
    required this.area,
    required this.detail,
  });

  final String label;
  final String title;
  final String area;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return AquaCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AquaText.inter(10, color: AquaColors.secondary)),
          const SizedBox(height: 6),
          Text(title, style: AquaText.manrope(14, weight: FontWeight.w700)),
          Text(area, style: AquaText.manrope(22, weight: FontWeight.w800)),
          const SizedBox(height: 4),
          Text(detail, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.3)),
        ],
      ),
    );
  }
}

class _Plot extends StatelessWidget {
  const _Plot({required this.title, required this.area, this.filled = false});

  final String title;
  final String area;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AquaColors.card,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AquaColors.primary.withValues(alpha: filled ? 1 : 0.4),
          width: filled ? 2 : 1.5,
        ),
      ),
      child: Column(
        children: [
          Icon(filled ? Icons.water : Icons.pool, color: filled ? AquaColors.secondary : AquaColors.primary),
          Text(title, style: AquaText.inter(11, color: AquaColors.onSurface, weight: FontWeight.w700)),
          Text(area, style: AquaText.inter(10)),
        ],
      ),
    );
  }
}

class _SpeciesRow extends StatelessWidget {
  const _SpeciesRow({
    required this.image,
    required this.name,
    required this.latin,
    required this.habit,
    required this.zone,
    required this.zoneColor,
    required this.zoneBg,
  });

  final String image;
  final String name;
  final String latin;
  final String habit;
  final String zone;
  final Color zoneColor;
  final Color zoneBg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AquaCard(
        child: Row(
          children: [
            AquaPhoto(url: image, height: 72, width: 72),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('MAJOR CARP', style: AquaText.inter(10)),
                      const SizedBox(width: 6),
                      Flexible(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: ChipLabel(zone, color: zoneColor, background: zoneBg),
                        ),
                      ),
                    ],
                  ),
                  Text(name, style: AquaText.manrope(16, weight: FontWeight.w800)),
                  Text(latin, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.outline).copyWith(fontStyle: FontStyle.italic)),
                  Text(habit, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.3)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Module extends StatelessWidget {
  const _Module({
    required this.icon,
    required this.title,
    required this.body,
    required this.tags,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String body;
  final List<String> tags;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AquaCard(
        onTap: onTap,
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AquaColors.low,
              child: Icon(icon, color: AquaColors.primary, size: 20),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AquaText.manrope(14, weight: FontWeight.w700)),
                  Text(body, style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant, height: 1.3)),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 6,
                    children: [for (final tag in tags) ChipLabel(tag)],
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: AquaColors.outline),
          ],
        ),
      ),
    );
  }
}
