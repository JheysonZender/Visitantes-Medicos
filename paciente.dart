import 'persona.dart';

class Paciente extends Persona {
    String direccion;
    String codigo_paciente;
    Paciente({
        required dni,
        required nombres,
        required apellidos,
        required this.direccion,
        required this.codigo_paciente,
    }):super(dni:dni, nombres:nombres, apellidos:apellidos);

    @override
    String toString(){
        return super.toString()+'''* Direccion: ${direccion}\n''';
    }
}

/*
class Paciente extends Persona {

    String direccion;

    Paciente({
        required this.direccion
    });

    @override
    String toString(){
        return super.toString()+'''* Direccion: ${direccion}\n''';
    }
}

class Paciente extends Persona {

    String? direccion;

    Paciente({
        required this.direccion,
        
    });

    @override
    String toString(){
        return super.toString()+'''* Direccion: ${direccion}\n''';
    }
}
*/