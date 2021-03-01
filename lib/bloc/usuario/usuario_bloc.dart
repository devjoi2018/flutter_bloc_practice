import 'package:meta/meta.dart';
import '../../models/usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'usuario_state.dart';
part 'usuario_events.dart';

class UsuarioBloc extends Bloc<UsuarioEvents, UsuarioState> {
  UsuarioBloc() : super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvents event) async* {
    if (event is ActivarUsuario) {
      yield state.copyWith(usuario: event.usuario);
    } else if (event is CambiarEdad) {
      yield state.copyWith(
        usuario: state.usuario.copyWith(edad: event.edad),
      );
    } else if (event is AgregarProfesion) {
      yield state.copyWith(
        usuario: state.usuario.copyWith(
          profesiones: [
            ...state.usuario.profesiones,
            event.profesion,
          ],
        ),
      );
    } else if (event is BorrarUsuario) {
      yield state.estadoInicial();
    }
  }
}
