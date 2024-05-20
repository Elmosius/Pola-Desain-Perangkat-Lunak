abstract interface class Command<T, P> {
  T execute(P p);
}
