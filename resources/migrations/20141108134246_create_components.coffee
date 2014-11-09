
exports.up = (knex, Promise) ->
	knex.schema.createTable 'components', (table) ->
		table.increments('id').primary()
		table.string('name').notNullable()
		table.boolean('composite_component').defaultTo(false)

exports.down = (knex, Promise) ->
	knex.schema.dropTable('components')
