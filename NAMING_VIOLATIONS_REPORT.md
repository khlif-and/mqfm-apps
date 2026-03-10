# 🔴 NAMING CONVENTION VIOLATIONS - Complete Report

## Summary
Found **62 files** that violate the naming/folder convention:
- File name prefix does NOT match parent folder name
- Some files in common/ folders that are feature-specific

---

## ATOMS (10 violations)

1. **atoms\auth\login_button.dart**
   - Issue: File prefix 'login' doesn't match folder 'auth'
   - Move to: atoms\login\login_button.dart

2. **atoms\auth\login_title.dart**
   - Issue: File prefix 'login' doesn't match folder 'auth'
   - Move to: atoms\login\login_title.dart

3. **atoms\auth\register_button.dart**
   - Issue: File prefix 'register' doesn't match folder 'auth'
   - Move to: atoms\register\register_button.dart

4. **atoms\auth\register_title.dart**
   - Issue: File prefix 'register' doesn't match folder 'auth'
   - Move to: atoms\register\register_title.dart

5. **atoms\auth\suffix_password_icon.dart**
   - Issue: File prefix 'suffix' doesn't match folder 'auth'
   - Move to: atoms\suffix\suffix_password_icon.dart

6. **atoms\dashboard\menu_grid_shimmer.dart**
   - Issue: File prefix 'menu' doesn't match folder 'dashboard'
   - Move to: atoms\menu\menu_grid_shimmer.dart

7. **atoms\playlist\filter_chip.dart**
   - Issue: File prefix 'filter' doesn't match folder 'playlist'
   - Move to: atoms\filter\filter_chip.dart

8. **atoms\profile\logout_button.dart**
   - Issue: File prefix 'logout' doesn't match folder 'profile'
   - Move to: atoms\logout\logout_button.dart

9. **atoms\profile\sidebar_menu_item.dart**
   - Issue: File prefix 'sidebar' doesn't match folder 'profile'
   - Move to: atoms\sidebar\sidebar_menu_item.dart

10. **atoms\profile\sidebar_profile_shimmer.dart**
    - Issue: File prefix 'sidebar' doesn't match folder 'profile'
    - Move to: atoms\sidebar\sidebar_profile_shimmer.dart

---

## MOLECULES (27 violations)

11. **molecules\auth\email_field.dart**
    - Issue: File prefix 'email' doesn't match folder 'auth'
    - Move to: molecules\email\email_field.dart

12. **molecules\auth\login_form_section.dart**
    - Issue: File prefix 'login' doesn't match folder 'auth'
    - Move to: molecules\login\login_form_section.dart

13. **molecules\auth\otp_input_row.dart**
    - Issue: File prefix 'otp' doesn't match folder 'auth'
    - Move to: molecules\otp\otp_input_row.dart

14. **molecules\auth\password_field.dart**
    - Issue: File prefix 'password' doesn't match folder 'auth'
    - Move to: molecules\password\password_field.dart

15. **molecules\auth\register_form_section.dart**
    - Issue: File prefix 'register' doesn't match folder 'auth'
    - Move to: molecules\register\register_form_section.dart

16. **molecules\dashboard\artikel_card.dart**
    - Issue: File prefix 'artikel' doesn't match folder 'dashboard'
    - Move to: molecules\artikel\artikel_card.dart

17. **molecules\dashboard\collab_card.dart**
    - Issue: File prefix 'collab' doesn't match folder 'dashboard'
    - Move to: molecules\collab\collab_card.dart

18. **molecules\dashboard\event_card.dart**
    - Issue: File prefix 'event' doesn't match folder 'dashboard'
    - Move to: molecules\event\event_card.dart (NOTE: Already exists!)

19. **molecules\dashboard\quick_pick_tile.dart**
    - Issue: File prefix 'quick' doesn't match folder 'dashboard'
    - Move to: molecules\quick_pick\quick_pick_tile.dart

20. **molecules\dashboard\quote_card.dart**
    - Issue: File prefix 'quote' doesn't match folder 'dashboard'
    - Move to: molecules\quote\quote_card.dart

21. **molecules\dashboard\ranking_tile.dart**
    - Issue: File prefix 'ranking' doesn't match folder 'dashboard'
    - Move to: molecules\ranking\ranking_tile.dart

22. **molecules\dashboard\series_tile.dart**
    - Issue: File prefix 'series' doesn't match folder 'dashboard'
    - Move to: molecules\series\series_tile.dart

23. **molecules\favorite_artist\artist_tile.dart**
    - Issue: File prefix 'artist' doesn't match folder 'favorite_artist'
    - Move to: molecules\artist\artist_tile.dart

24. **molecules\guide_tour\guide_tour_content.dart**
    - Issue: File prefix 'guide' doesn't match folder 'guide_tour'
    - Move to: molecules\guide\guide_tour_content.dart

25. **molecules\library\liked_audio_tile.dart**
    - Issue: File prefix 'liked' doesn't match folder 'library'
    - Move to: molecules\liked\liked_audio_tile.dart

26. **molecules\library\liked_audios_empty_state.dart**
    - Issue: File prefix 'liked' doesn't match folder 'library'
    - Move to: molecules\liked\liked_audios_empty_state.dart

27. **molecules\notification\suggestion_tile.dart**
    - Issue: File prefix 'suggestion' doesn't match folder 'notification'
    - Move to: molecules\suggestion\suggestion_tile.dart

28. **molecules\onboarding\audio_pick_item.dart**
    - Issue: File prefix 'audio' doesn't match folder 'onboarding'
    - Move to: molecules\audio\audio_pick_item.dart

29. **molecules\playlist\library_item.dart**
    - Issue: File prefix 'library' doesn't match folder 'playlist'
    - Move to: molecules\library\library_item.dart

30. **molecules\profile\settings_tile.dart**
    - Issue: File prefix 'settings' doesn't match folder 'profile'
    - Move to: molecules\settings\settings_tile.dart

31. **molecules\profile\sidebar_profile_section.dart**
    - Issue: File prefix 'sidebar' doesn't match folder 'profile'
    - Move to: molecules\sidebar\sidebar_profile_section.dart

32. **molecules\profile\sidebar_promo_card.dart**
    - Issue: File prefix 'sidebar' doesn't match folder 'profile'
    - Move to: molecules\sidebar\sidebar_promo_card.dart

33. **molecules\search\browse_card.dart**
    - Issue: File prefix 'browse' doesn't match folder 'search'
    - Move to: molecules\browse\browse_card.dart

34. **molecules\search\discover_card.dart**
    - Issue: File prefix 'discover' doesn't match folder 'search'
    - Move to: molecules\discover\discover_card.dart

35. **molecules\search\discover_track_tile.dart**
    - Issue: File prefix 'discover' doesn't match folder 'discover'
    - Move to: molecules\discover\discover_track_tile.dart

36. **molecules\search\mixed_card.dart**
    - Issue: File prefix 'mixed' doesn't match folder 'search'
    - Move to: molecules\mixed\mixed_card.dart

37. **molecules\stats\daily_stats_section.dart**
    - Issue: File prefix 'daily' doesn't match folder 'stats'
    - Move to: molecules\daily\daily_stats_section.dart

38. **molecules\stats\ranking_section.dart**
    - Issue: File prefix 'ranking' doesn't match folder 'stats'
    - Move to: molecules\ranking\ranking_section.dart

---

## ORGANISMS (25 violations)

39. **organisms\article\artikel_section.dart**
    - Issue: File prefix 'artikel' doesn't match folder 'article'
    - Move to: organisms\artikel\artikel_section.dart

40. **organisms\dashboard\event_section.dart**
    - Issue: File prefix 'event' doesn't match folder 'dashboard'
    - Move to: organisms\event\event_section.dart

41. **organisms\dashboard\horizontal_content_list.dart**
    - Issue: File prefix 'horizontal' doesn't match folder 'dashboard'
    - Move to: organisms\horizontal\horizontal_content_list.dart

42. **organisms\dashboard\location_section.dart**
    - Issue: File prefix 'location' doesn't match folder 'dashboard'
    - Move to: organisms\location\location_section.dart

43. **organisms\dashboard\menu_grid.dart**
    - Issue: File prefix 'menu' doesn't match folder 'dashboard'
    - Move to: organisms\menu\menu_grid.dart

44. **organisms\dashboard\recommendation_sliver_list.dart**
    - Issue: File prefix 'recommendation' doesn't match folder 'dashboard'
    - Move to: organisms\recommendation\recommendation_sliver_list.dart

45. **organisms\dashboard\resume_section.dart**
    - Issue: File prefix 'resume' doesn't match folder 'dashboard'
    - Move to: organisms\resume\resume_section.dart

46. **organisms\dashboard\series_section.dart**
    - Issue: File prefix 'series' doesn't match folder 'dashboard'
    - Move to: organisms\series\series_section.dart

47. **organisms\dashboard\vertical_content_list.dart**
    - Issue: File prefix 'vertical' doesn't match folder 'dashboard'
    - Move to: organisms\vertical\vertical_content_list.dart

48. **organisms\dashboard\vote_ranking_section.dart**
    - Issue: File prefix 'vote' doesn't match folder 'dashboard'
    - Move to: organisms\vote\vote_ranking_section.dart

49. **organisms\library\liked_audios_list.dart**
    - Issue: File prefix 'liked' doesn't match folder 'library'
    - Move to: organisms\liked\liked_audios_list.dart

50. **organisms\navigation\bottom_bar.dart**
    - Issue: File prefix 'bottom' doesn't match folder 'navigation'
    - Move to: organisms\bottom\bottom_bar.dart

51. **organisms\player\add_to_playlist_sheet.dart**
    - Issue: File prefix 'add' doesn't match folder 'player'
    - Move to: organisms\add\add_to_playlist_sheet.dart

52. **organisms\player\mini_player.dart**
    - Issue: File prefix 'mini' doesn't match folder 'player'
    - Move to: organisms\mini\mini_player.dart

53. **organisms\player\queue_bottom_sheet.dart**
    - Issue: File prefix 'queue' doesn't match folder 'player'
    - Move to: organisms\queue\queue_bottom_sheet.dart

54. **organisms\player\sleep_timer_sheet.dart**
    - Issue: File prefix 'sleep' doesn't match folder 'player'
    - Move to: organisms\sleep\sleep_timer_sheet.dart

55. **organisms\playlist\library_header.dart**
    - Issue: File prefix 'library' doesn't match folder 'playlist'
    - Move to: organisms\library\library_header.dart

56. **organisms\playlist\library_playlist_list.dart**
    - Issue: File prefix 'library' doesn't match folder 'playlist'
    - Move to: organisms\library\library_playlist_list.dart

57. **organisms\playlist\library_static_items.dart**
    - Issue: File prefix 'library' doesn't match folder 'playlist'
    - Move to: organisms\library\library_static_items.dart

58. **organisms\profile\edit_profile_form.dart**
    - Issue: File prefix 'edit' doesn't match folder 'profile'
    - Move to: organisms\edit\edit_profile_form.dart

59. **organisms\profile\settings_list.dart**
    - Issue: File prefix 'settings' doesn't match folder 'profile'
    - Move to: organisms\settings\settings_list.dart

60. **organisms\profile\sidebar_profile.dart**
    - Issue: File prefix 'sidebar' doesn't match folder 'profile'
    - Move to: organisms\sidebar\sidebar_profile.dart

61. **organisms\search\browse_category_grid.dart**
    - Issue: File prefix 'browse' doesn't match folder 'search'
    - Move to: organisms\browse\browse_category_grid.dart

62. **organisms\search\discover_horizontal_list.dart**
    - Issue: File prefix 'discover' doesn't match folder 'search'
    - Move to: organisms\discover\discover_horizontal_list.dart

---

## NO ISSUES FOUND

✅ All files in **common/** folders are appropriately generic:
   - action_chip, app_network_image, custom_button, custom_refresh_indicator, 
     custom_textfield, image_placeholder, placeholder_content, section_header, 
     section_title, shimmer_box, shimmer_list, stat_card, content_tile, 
     custom_app_bar, empty_state_card, google_sign_in_button, 
     image_picker_bottom_sheet

✅ All feature-specific folders have correctly prefixed files:
   - about, clip, faq, favorite_artist, history, notification, onboarding, 
     playlist (track-specific), preferences, progress, search_input, series, 
     vote

---

## RECOMMENDATION

This appears to be the **original project structure** where many files were 
organized by functionality (auth, dashboard, etc.) rather than by component 
type (login, register, event, etc.). 

To fix this, you have two options:

**Option A:** Refactor to match the stated convention
- Create ~40+ new feature-specific folders
- Move/reorganize files accordingly
- Update all imports across the codebase

**Option B:** Update the convention
- Accept that auth/dashboard/etc are valid grouping mechanisms
- Define which folders are "catch-alls" (auth, dashboard, navigation, etc.)
- Use this as the official convention moving forward

