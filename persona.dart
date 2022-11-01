abstract class Persona{
    int dni;
    String nombres;
    String apellidos;

    Persona({
        required this.dni,
        required this.nombres,
        required this.apellidos
    });

    @override
    String toString(){
        return '''. - . - . - . - . - . - . - . - . - . - .\n-------   DATOS PERSONALES   --------\n* Nombres y Apellidos: ${this.nombres}, ${this.apellidos}\n* DNI: ${this.dni}\n''';
    }
}
