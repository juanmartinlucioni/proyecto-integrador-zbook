const usuarios = {
  lista: [
    {
      id: 1,
      username: "RayoMcQueen",
      password: "copapiston",
      email: "rayo@radiadorsprings.com",
      age: 24,
      birthday: "1996-05-06",
      profilepicture: "/images/profilepicstemp/1.jpg",
    },
    {
      id: 2,
      username: "Mate",
      password: "retrovisor",
      email: "mate@radiadorsprings.com",
      age: 26,
      birthday: "1994-12-25",
      profilepicture: "/images/profilepicstemp/2.jpg",
    },
    {
      id: 3,
      username: "Sally",
      password: "cozycone",
      email: "sally@radiadorsprings.com",
      age: 24,
      birthday: "1996-02-28",
      profilepicture: "/images/profilepicstemp/3.jpeg",
    },
    {
      id: 4,
      username: "Francesco",
      password: "fiaummmm",
      email: "velocidad@detuttoilmundo.com",
      age: 23,
      birthday: "1996-12-23",
      profilepicture: "/images/profilepicstemp/4.png",
    },
    {
      id: 5,
      username: "DocH",
      password: "doblaralreves",
      email: "doc@radiadorsprings.com",
      age: 62,
      birthday: "1958-02-01",
      profilepicture: "/images/profilepicstemp/5.jpg",
    },
  ],
  pullUser: function pullUser(idQuery) {
    let resultados = [];
    for (let i = 0; i < usuarios.lista.length; i++) {
      const element = usuarios.lista[i];
      if (idQuery == element.id) {
        resultados.push(element);
      }
    }
    if (resultados.length === 0) {
      return "F";
    } else {
      return resultados;
    }
  },
};

//export

module.exports = usuarios;