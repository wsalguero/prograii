insert into users(
                fullname, 
                user_address,
            ) 
values (
        "Juan perez",
        "Avenida ejemplo 123"
    )

--  Obtener usuario por email (ejemplo, insertar datos reales para pruebas de consultas);
select  id
        fullname
        user_address
        email
        -- ....
    where email = "example@email.com"
