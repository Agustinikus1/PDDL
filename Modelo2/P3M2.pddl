(define (problem logistica-problema-3)
  (:domain logistica)
  (:objects
    vehiculo1 - camion
    vehiculo2 - barco
    vehiculo3 - camioneta
    vehiculo4 - avion
    contenedor1 - contenedor
    contenedor2 - contenedor
    paquete1 - paquete
    paquete2 - paquete
    valparaiso - ubicacion
    santiago - ubicacion
    tokio - ubicacion
  )
  (:init
    (en valparaiso vehiculo1)
    (en valparaiso vehiculo2)
    (en valparaiso vehiculo3)
    (en valparaiso vehiculo4)
    (en santiago vehiculo1)
    (en santiago vehiculo3)
    (en tokio vehiculo2)
    (en tokio vehiculo4)
    (carga contenedor1)
    (carga contenedor2)
    (carga paquete1)
    (carga paquete2)
    (puede_transportar vehiculo1 contenedor1)
    (puede_transportar vehiculo1 contenedor2)
    (puede_transportar vehiculo2 contenedor1)
    (puede_transportar vehiculo2 contenedor2)
    (puede_transportar vehiculo3 paquete1)
    (puede_transportar vehiculo3 paquete2)
    (puede_transportar vehiculo4 paquete1)
    (puede_transportar vehiculo4 paquete2)
  )
  (:goal (and (en santiago paquete1) (en valparaiso contenedor1) (en santiago paquete2) (en valparaiso contenedor1) (en valparaiso contenedor2)))
)
