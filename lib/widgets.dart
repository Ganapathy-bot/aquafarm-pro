import 'package:flutter/material.dart';

import 'theme.dart';

class AquaCard extends StatelessWidget {
  const AquaCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(14),
    this.onTap,
    this.color = AquaColors.card,
  });

  final Widget child;
  final EdgeInsets padding;
  final VoidCallback? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final card = Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AquaColors.outlineVariant.withValues(alpha: 0.45)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D0B3D5C),
            blurRadius: 14,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
    if (onTap == null) return card;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: card,
      ),
    );
  }
}

class AquaPhoto extends StatelessWidget {
  const AquaPhoto({
    super.key,
    required this.url,
    this.height = 72,
    this.width = 72,
    this.radius = 12,
  });

  final String url;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        url,
        height: height,
        width: width,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          height: height,
          width: width,
          color: AquaColors.container,
          child: const Icon(Icons.image_outlined, color: AquaColors.primary),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.title, {super.key, this.trailing});

  final String title;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 16,
          decoration: BoxDecoration(
            color: AquaColors.primary,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(child: Text(title, style: AquaText.manrope(16, weight: FontWeight.w700))),
        if (trailing != null)
          Text(trailing!, style: AquaText.inter(10, color: AquaColors.primary)),
      ],
    );
  }
}

class AquaAppBar extends StatelessWidget {
  const AquaAppBar({super.key, required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
      child: Row(
        children: [
          AquaPhoto(url: AquaImages.logo, height: 36, width: 36, radius: 10),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AquaFarm Pro', style: AquaText.manrope(20, weight: FontWeight.w800)),
                Text(subtitle, style: AquaText.inter(10, weight: FontWeight.w600)),
              ],
            ),
          ),
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AquaColors.card,
              shape: BoxShape.circle,
              border: Border.all(color: AquaColors.outlineVariant.withValues(alpha: 0.5)),
            ),
            child: const Icon(Icons.notifications_none, size: 20, color: AquaColors.onSurface),
          ),
        ],
      ),
    );
  }
}

class ChipLabel extends StatelessWidget {
  const ChipLabel(this.text, {super.key, this.color = AquaColors.primary, this.background});

  final String text;
  final Color color;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: background ?? color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Text(text, style: AquaText.inter(10, color: color, weight: FontWeight.w700)),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, required this.index, required this.onSelect});

  final int index;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    const items = [
      (Icons.home_outlined, Icons.home, 'Home'),
      (Icons.set_meal_outlined, Icons.set_meal, 'Fish & Nursery'),
      (Icons.water_outlined, Icons.water, 'Pond Mgmt'),
      (Icons.query_stats_outlined, Icons.query_stats, 'Harvest & Records'),
    ];
    return Container(
      decoration: const BoxDecoration(
        color: AquaColors.card,
        border: Border(top: BorderSide(color: Color(0x66BDC9C5))),
        boxShadow: [BoxShadow(color: Color(0x100B3D5C), blurRadius: 16, offset: Offset(0, -4))],
      ),
      padding: const EdgeInsets.fromLTRB(4, 6, 4, 10),
      child: Row(
        children: [
          for (var i = 0; i < items.length; i++)
            Expanded(
              child: InkWell(
                onTap: () => onSelect(i),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    color: index == i ? AquaColors.low : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        index == i ? items[i].$2 : items[i].$1,
                        size: 22,
                        color: index == i ? AquaColors.primary : AquaColors.variant,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        items[i].$3,
                        textAlign: TextAlign.center,
                        style: AquaText.inter(
                          10,
                          color: index == i ? AquaColors.primary : AquaColors.variant,
                          weight: index == i ? FontWeight.w700 : FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
