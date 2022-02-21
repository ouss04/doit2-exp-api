
## vehiculo model:
npx sequelize-cli model:generate --name Vehiculo \
--attributes bastidor:string,modelo:string,anio:string,color:string
npx sequelize-cli db:migrate

# npx sequelize-cli seed:generate --name vehiculos
cat << SEEDERS..0.VEHICULOS.JS > seeders/0-vehiculos.js
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('Vehiculos', [{
      bastidor: 'D45656A',
      modelo:   'Audi',
      anio:     '2004',
      color:    'negro',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      bastidor: 'S35464A',
      modelo:   'BMW',
      anio:     '2010',
      color:    'Blanco',
      createdAt: new Date(),
      updatedAt: new Date()    },
    {
      bastidor: 'G44646L',
      modelo:   'Mercedes',
      anio:     '2018',
      color:    'negro',
      createdAt: new Date(),
      updatedAt: new Date()
    }], {});
  },  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('Vehiculos', null, {});
  }
};
SEEDERS..0.VEHICULOS.JS