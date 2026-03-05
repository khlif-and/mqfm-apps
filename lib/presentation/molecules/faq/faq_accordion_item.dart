import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_styles.dart';

class FaqAccordionItem extends StatefulWidget {
  final String title;
  final String content;

  const FaqAccordionItem({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  State<FaqAccordionItem> createState() => _FaqAccordionItemState();
}

class _FaqAccordionItemState extends State<FaqAccordionItem>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppDims.h12),
      decoration: BoxDecoration(
        color: AppColors.surfaceHighlight.withOpacity(0.3),
        borderRadius: BorderRadius.circular(AppDims.r16),
        border: Border.all(
          color: _isExpanded
              ? AppColors.primary.withOpacity(0.5)
              : AppColors.textWhite.withOpacity(0.05),
          width: 1,
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          onExpansionChanged: (expanded) {
            setState(() {
              _isExpanded = expanded;
            });
          },
          tilePadding: EdgeInsets.symmetric(
            horizontal: AppDims.w20,
            vertical: AppDims.h4,
          ),
          collapsedIconColor: AppColors.textWhite.withOpacity(0.5),
          iconColor: AppColors.primaryClassic,
          title: Text(
            widget.title,
            style: AppStyles.bodyMedium.copyWith(
              color: _isExpanded
                  ? AppColors.textWhite
                  : AppColors.textWhite.withOpacity(0.8),
              fontWeight: _isExpanded ? FontWeight.bold : FontWeight.w600,
            ),
          ),
          childrenPadding: EdgeInsets.fromLTRB(
            AppDims.w20,
            0,
            AppDims.w20,
            AppDims.h20,
          ),
          children: [
            Text(
              widget.content,
              style: AppStyles.bodyMedium.copyWith(
                color: AppColors.textWhite.withOpacity(0.6),
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
