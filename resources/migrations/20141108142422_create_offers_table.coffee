
exports.up = (knex, Promise) ->
	knex.schema.createTable 'offers', (table) ->
		table.increments('id').primary()
		table.integer('price').notNullable()
		table.boolean('accepted').defaultTo(false)
		table.boolean('completed').defaultTo(false)
		table.timestamp('valid_till')
		table.timestamp('valid_from')
		table.integer('component_id').references('components.id')
		table.timestamps()

exports.down = (knex, Promise) ->
	knex.schema.dropTable('offers')
