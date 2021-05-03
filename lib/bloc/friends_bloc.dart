import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf2/bloc/friends_event.dart';
import 'package:sf2/bloc/friends_state.dart';
import 'package:sf2/model/friends_repository.dart';

class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  final FriendsRepository _friendsRepository = FriendsRepository(); 
  @override
  FriendsState get initialState => FriendsEmptyState();

  @override
  Stream<FriendsState> mapEventToState(FriendsEvent event) async* {
    if (event is FriendsAddEvent) {
      _friendsRepository.addFriend("HUHUHU", "adasdasd");

      yield FriendsLoadedState(friends: _friendsRepository.getFriends());
    } else if (event is FriendsLoadEvent) {
      yield FriendsLoadedState(friends: _friendsRepository.getFriends());
    }
  }
}