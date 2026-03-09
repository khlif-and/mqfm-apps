import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/preferences/applications/preferences_bloc/preferences_bloc.dart';
import 'package:mqfm_apps/features/preferences/applications/preferences_bloc/preferences_event.dart';
import 'package:mqfm_apps/features/preferences/domain/entities/preferences.dart';

class PreferencesForm extends StatefulWidget {
  final PreferencesEntity preferences;

  const PreferencesForm({super.key, required this.preferences});

  @override
  State<PreferencesForm> createState() => _PreferencesFormState();
}

class _PreferencesFormState extends State<PreferencesForm> {
  late double _playbackSpeed;
  late int _sleepTimerMinutes;
  late bool _autoDownload;

  @override
  void initState() {
    super.initState();
    _playbackSpeed = widget.preferences.playbackSpeed;
    _sleepTimerMinutes = widget.preferences.sleepTimerMinutes;
    _autoDownload = widget.preferences.autoDownload;
  }

  @override
  void didUpdateWidget(covariant PreferencesForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.preferences != widget.preferences) {
      _playbackSpeed = widget.preferences.playbackSpeed;
      _sleepTimerMinutes = widget.preferences.sleepTimerMinutes;
      _autoDownload = widget.preferences.autoDownload;
    }
  }

  void _save() {
    context.read<PreferencesBloc>().add(
      PreferencesEvent.update(
        playbackSpeed: _playbackSpeed,
        sleepTimerMinutes: _sleepTimerMinutes,
        autoDownload: _autoDownload,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(AppDims.r16),
      children: [
        _SectionTitle(text: 'Kecepatan Putar'),
        SizedBox(height: AppDims.h8),
        _buildSpeedCard(),
        SizedBox(height: AppDims.h24),
        _SectionTitle(text: 'Sleep Timer'),
        SizedBox(height: AppDims.h8),
        _buildTimerCard(),
        SizedBox(height: AppDims.h24),
        _buildAutoDownloadRow(),
        SizedBox(height: AppDims.h32),
        _buildSaveButton(),
      ],
    );
  }

  Widget _buildSpeedCard() {
    return Container(
      padding: EdgeInsets.all(AppDims.r16),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(AppDims.r12),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '${_playbackSpeed.toStringAsFixed(1)}x',
              style: TextStyle(color: AppColors.primary, fontSize: AppDims.sp22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: AppDims.h8),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: AppColors.primary,
              inactiveTrackColor: AppColors.surfaceHighlight,
              thumbColor: AppColors.primary,
              overlayColor: AppColors.primary.withValues(alpha: 0.2),
            ),
            child: Slider(
              value: _playbackSpeed, min: 0.5, max: 3.0, divisions: 10,
              onChanged: (value) => setState(() => _playbackSpeed = value),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('0.5x', style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp10)),
              Text('3.0x', style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp10)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimerCard() {
    return Container(
      padding: EdgeInsets.all(AppDims.r16),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(AppDims.r12),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              _sleepTimerMinutes == 0 ? 'Nonaktif' : '$_sleepTimerMinutes menit',
              style: TextStyle(color: AppColors.primary, fontSize: AppDims.sp18, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: AppDims.h8),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: AppColors.primary,
              inactiveTrackColor: AppColors.surfaceHighlight,
              thumbColor: AppColors.primary,
              overlayColor: AppColors.primary.withValues(alpha: 0.2),
            ),
            child: Slider(
              value: _sleepTimerMinutes.toDouble(), min: 0, max: 120, divisions: 12,
              onChanged: (value) => setState(() => _sleepTimerMinutes = value.toInt()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAutoDownloadRow() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h12),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(AppDims.r12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Auto Download', style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp14, fontWeight: FontWeight.w500)),
          Switch(
            value: _autoDownload,
            activeTrackColor: AppColors.primary,
            inactiveTrackColor: AppColors.surfaceHighlight,
            onChanged: (value) => setState(() => _autoDownload = value),
          ),
        ],
      ),
    );
  }

  Widget _buildSaveButton() {
    return SizedBox(
      width: double.infinity,
      height: AppDims.h48,
      child: ElevatedButton(
        onPressed: _save,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDims.r24)),
        ),
        child: Text('Simpan', style: TextStyle(fontSize: AppDims.sp16, fontWeight: FontWeight.w600)),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;

  const _SectionTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp16, fontWeight: FontWeight.w600),
    );
  }
}
