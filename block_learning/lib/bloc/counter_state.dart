part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  final int count;

  const CounterState(this.count);

}

final class CounterInitial extends CounterState {
  const CounterInitial(super.count);
}

final class CounterUpdate extends CounterState{
  const CounterUpdate(super.count);
}