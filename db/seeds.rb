# This data can be loaded with the rails db:seed command (or created alongside the database with db:setup).

Character.create(
  [
    {
      name: 'man',
      character_type: 'gender'
    },
    {
      name: 'woman',
      character_type: 'gender'
    },
    {
      name: 'vampire',
      character_type: 'fantasy'
    },
  ]
)

Situation.create(
  [
    {
      name: 'victim',
      situation_type: 'state'
    },
    {
      name: 'soldier',
      situation_type: 'occupation'
    },
    {
      name: 'witch',
      situation_type: 'fantasy'
    },
  ]
)

Place.create(
  [
    {
      name: 'England',
      place_type: 'country'
    },
    {
      name: 'the Vietnam War',
      place_type: 'war'
    },
    {
      name: 'a mythical world',
      place_type: 'fantasy'
    },
  ]
)

FirstName.create(
  [
    {
      name: 'Maria',
    },
    {
      name: 'Anna',
    },
    {
      name: 'Emma',
    },
  ]
)

LastName.create(
  [
    {
      name: 'Williamson',
    },
    {
      name: 'Brookes',
    },
    {
      name: 'Smith',
    },
  ]
)
