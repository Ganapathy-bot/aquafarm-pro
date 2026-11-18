import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets.dart';

class HarvestScreen extends StatelessWidget {
  const HarvestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
      children: [
        Text('Healthy Fish. Profitable Harvest.', style: AquaText.manrope(24, weight: FontWeight.w800)),
        Text(
          'Health signs and harvest steps.',
          style: AquaText.manrope(13, weight: FontWeight.w500, color: AquaColors.variant, height: 1.35),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Fish health monitoring'),
        const SizedBox(height: 10),
        const AquaCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Warning signs', style: TextStyle(fontWeight: FontWeight.w800, color: AquaColors.tertiary)),
              SizedBox(height: 8),
              _Sign('Reduced feeding activity'),
              _Sign('Unusual swimming behaviour'),
              _Sign('Fish gasping at the water surface'),
              _Sign('Visible body injuries or lesions'),
              _Sign('Abnormal mortality'),
              _Sign('Excessive mucus or external parasites'),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const AquaCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Prevention', style: TextStyle(fontWeight: FontWeight.w800, color: AquaColors.primary)),
              SizedBox(height: 8),
              _Sign('Purchase healthy fish seed.'),
              _Sign('Maintain a suitable stocking density.'),
              _Sign('Monitor dissolved oxygen and water quality.'),
              _Sign('Remove dead fish promptly.'),
              _Sign('Diagnose the problem before applying any treatment.'),
              _Sign('Keep regular growth and mortality records.'),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const SectionTitle('Harvesting and marketing'),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              const AquaPhoto(url: AquaImages.harvest, height: 170, width: double.infinity, radius: 0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Carp harvest with a net',
                  style: AquaText.inter(12, color: Colors.white, weight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const _HarvestStep('1', 'Check fish size and market demand.'),
        const _HarvestStep('2', 'Harvest marketable fish using suitable nets.'),
        const _HarvestStep('3', 'Grade fish according to size and species.'),
        const _HarvestStep('4', 'Handle fish carefully to avoid injury.'),
        const _HarvestStep('5', 'Maintain hygienic conditions.'),
        const _HarvestStep('6', 'Transport quickly to the market.'),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a guide.')),
              );
            },
            style: FilledButton.styleFrom(
              backgroundColor: AquaColors.primary,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            ),
            child: Text('Start Managing Your Fish Farm', style: AquaText.inter(14, color: Colors.white)),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Monitor every stage. Improve productivity. Make informed decisions.',
          textAlign: TextAlign.center,
          style: AquaText.manrope(12, weight: FontWeight.w500, color: AquaColors.variant),
        ),
      ],
    );
  }
}

class _Sign extends StatelessWidget {
  const _Sign(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('•  ', style: TextStyle(color: AquaColors.primary, fontWeight: FontWeight.w700)),
          Expanded(child: Text(text, style: const TextStyle(color: AquaColors.onSurface, height: 1.3))),
        ],
      ),
    );
  }
}

class _HarvestStep extends StatelessWidget {
  const _HarvestStep(this.n, this.text);

  final String n;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: AquaColors.primary,
            child: Text(n, style: AquaText.inter(11, color: Colors.white)),
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: AquaText.manrope(13, weight: FontWeight.w600, height: 1.3))),
        ],
      ),
    );
  }
}



