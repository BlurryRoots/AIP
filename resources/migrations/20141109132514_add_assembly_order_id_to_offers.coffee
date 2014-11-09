
exports.up = (knex, Promise) ->
	knex.schema.table 'offers', (table) ->
		table.integer('assembly_order_id').references('assembly_orders.id')

exports.down = (knex, Promise) ->
	knex.schema.table 'offers', (table) ->
		table.dropColumn('assembly_order_id')
