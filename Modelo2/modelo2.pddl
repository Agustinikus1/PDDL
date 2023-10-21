(define (domain logistica)
  (:requirements :strips)
  (:predicates
    (en ?loc - ubicacion ?vehiculo - vehiculo)
    (carga ?item - item)
    (en ?item - item ?contenedor - contenedor)
    (puede_transportar ?vehiculo - vehiculo ?item - item)
    (aeropuerto ?loc - ubicacion)
    (puerto ?loc - ubicacion)
  )
  
  (:types
    ubicacion vehiculo item contenedor - item
  )
  
  (:operators
    ; Cargar carga en un contenedor
    (:action cargar_en_contenedor
      :parameters (?c - contenedor ?i - item ?l - ubicacion)
      :precondition (and (en ?l ?i) (en ?l ?c) (carga ?i) (puede_transportar ?c ?i) (not (en ?i ?c)))
      :effect (and (en ?i ?c) (not (en ?l ?i)))
    )

    ; Descargar carga de un contenedor
    (:action descargar_de_contenedor
      :parameters (?c - contenedor ?i - item ?l - ubicacion)
      :precondition (and (en ?l ?c) (en ?i ?c) (carga ?i))
      :effect (and (not (en ?i ?c)) (en ?l ?i))
    )
  )
)





