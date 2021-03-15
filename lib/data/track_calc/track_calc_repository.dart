import 'package:kidzit_app/models/track_calc/track_calc_conceive_model.dart';

import './track_calc_provider.dart';
import '../../models/track_calc/track_calc_model.dart';

class TrackCalcRepository {
  TrackCalcProvider _trackCalcProvider = TrackCalcProvider();
  Future<TrackCalcModel> getTrackCalcForCycle(
          int userId, String date, String type) =>
      _trackCalcProvider.getTrackCalculationForCycle(userId, date, type);

  Future<TrackCalcConceiveModel> getTrackCalcForConceive(
          int userId, String date, String type) =>
      _trackCalcProvider.getTrackCalculationForConceive(userId, date, type);
}
