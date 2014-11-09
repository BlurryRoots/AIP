
exports.up = (knex, Promise) ->
	knex.schema.createTable 'assembly_orders', (table) ->
		table.increments('id').primary()
		table.integer('component_id').references('components.id').notNullable()
		table.boolean('completed').defaultTo(false)

exports.down = (knex, Promise) ->
	knex.schema.dropTable('assembly_orders')
