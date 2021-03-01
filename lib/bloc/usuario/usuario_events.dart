part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvents {}

class ActivarUsuario extends UsuarioEvents {
  final Usuario usuario;

  ActivarUsuario(this.usuario);
}

class CambiarEdad extends UsuarioEvents {
  final int edad;

  CambiarEdad(this.edad);
}

class AgregarProfesion extends UsuarioEvents {
  final String profesion;

  AgregarProfesion(this.profesion);
}

class BorrarUsuario extends UsuarioEvents {}
