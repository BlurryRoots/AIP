
exports.up = (knex, Promise) ->
	knex.schema.createTable 'components_components', (table) ->
		table.integer('component_id').references('components.id')
		table.integer('child_component_id').references('components.id')

exports.down = (knex, Promise) ->
	knex.schema.dropTable('components_components')
