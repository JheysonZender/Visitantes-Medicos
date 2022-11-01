import 'persona.dart';

class Medico extends Persona {
    String codigo_medico;
    String especialidad;

    Medico({
        required dni,
        required nombres,
        required apellidos,
        required this.codigo_medico,
        required this.especialidad
    }):super(dni:dni, nombres:nombres, apellidos:apellidos);

    @override
    String toString(){
        return super.toString()+'''* Codigo: ${this.codigo_medico}\n* Especialidad: ${this.especialidad}\n''';
    }
}