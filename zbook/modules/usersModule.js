const usuarios = {
    lista: [
        {
            idusuarios: 1,
            username: "RayoMcQueen",
            password: "copapiston",
            email: "rayo@radiadorsprings.com",
            age: 24,
            birthday: "1996-05-06",
            image: "https://images-na.ssl-images-amazon.com/images/I/41bXR8ybbHL._AC_.jpg"
        },
        {
            idusuarios: 2,
            username: "Mate",
            password: "retrovisor",
            email: "mate@radiadorsprings.com",
            age: 26,
            birthday: "1994-12-25",
            image: "https://images-ext-1.discordapp.net/external/T23M3R8yHhnFylZxjCtb5JrcsJ7n1NDEpjFsl9DdgG8/%3Fwidth%3D562/https/ixxidesign.azureedge.net/media/1332386/IXXI-Disney-Cars-Tow-Mater.jpg"
        },
        {
            idusuarios: 3,
            username: "Sally",
            password: "cozycone",
            email: "sally@radiadorsprings.com",
            age: 24,
            birthday: "1996-02-28",
            image: "https://images-ext-2.discordapp.net/external/2hxxghCzIWMfCLd_55CnP1oI-p8u1lCPmo4Ypszzw3c/%3Fregion%3D0%2C0%2C600%2C600/https/lumiere-a.akamaihd.net/v1/images/open-uri20150422-20810-1sjqwvx_173ad2cf.jpeg"
        },
        {
            idusuarios: 4,
            username: "Francesco",
            password: "fiaummmm",
            email: "velocidad@detuttoilmundo.com",
            age: 23,
            birthday: "1996-12-23",
            image: "https://vignette.wikia.nocookie.net/disney/images/a/a5/Francesco_Bernoulli.png/revision/latest?cb=20130618052953&path-prefix=es"
        },
        {
            idusuarios: 5,
            username: "DocH",
            password: "doblaralreves",
            email: "doc@radiadorsprings.com",
            age: 62,
            birthday: "1958-02-01",
            image: "https://www.autoclasico.com.mx/resources//Fotos/05/84/F05-0450984.jpg"
        }
    ],
    pullUser: function pullUser(id) {
        let resultados = [];
        for (let i = 0; i < usuarios.lista.length; i++) {
            const element = usuarios.lista[i];
            if (id == element.idusuarios) {
                resultados.push(element)
            }
        }
        if (resultados.length === 0) {
            return "F"
        } else {
            return resultados
        }
    },
};

//export

module.exports = usuarios;