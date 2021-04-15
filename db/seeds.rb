# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Hierarchy.destroy_all

Hierarchy.create(name: 'Administrador')
Hierarchy.create(name: 'Coordenador')
Hierarchy.create(name: 'Participante')

User.create(email: 'kayo@teste.com', password: '123456', name: 'Kayo Pereira', cpf: '70585662401', hierarchy_id: 1)