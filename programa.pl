cargo(maria, empleado).
cargo(nora, empleado).
cargo(felipe, empleado).
cargo(hugo, empleado).
cargo(juan, cadete).
cargo(pedro, cadete).
cargo(ana, cadete).
cargo(roque, pasante).

perteneceDepartamento(maria, ventas).
perteneceDepartamento(juan, ventas).
perteneceDepartamento(roque, ventas).
perteneceDepartamento(nora, compras).
perteneceDepartamento(pedro, compras).
perteneceDepartamento(felipe, administracion).
perteneceDepartamento(hugo, administracion).
perteneceDepartamento(ana, administracion).

/*1. ¿quiénes trabajan en el departamento de compras? 
    ¿y en el de ventas? 

    Consulta: perteneceDepartamento(Persona, compras).
    Respuesta: 
        Persona = nora ;
        Persona = pedro.
    Consulta: perteneceDepartamento(Persona, ventas).
    Respuesta:
        Persona = maria ;
        Persona = juan ;
        Persona = roque.
*/
% 2.dadas dos personas, ¿trabajan en el mismo departamento?

trabajanMismoDepartamento(Persona1, Persona2) :- 
    perteneceDepartamento(Persona1, Departamento), perteneceDepartamento(Persona2, Departamento), Persona1 \= Persona2.

% 3. dadas dos personas a y b, ¿puede a darle órdenes a b? 

puedeDarOrdenes(Persona1, Persona2) :-
    trabajanMismoDepartamento(Persona1, Persona2), cargo(Persona1, empleado), cargo(Persona2, cadete).

puedeDarOrdenes(Persona1, Persona2) :-
    trabajanMismoDepartamento(Persona1, Persona2), cargo(Persona1, empleado), cargo(Persona2, pasante).
