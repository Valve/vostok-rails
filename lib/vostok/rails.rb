require 'vostok'
require 'vostok/rails/version'

module Vostok
  module Rails
    def import(columns, values)
      unless connection.is_a? ActiveRecord::ConnectionAdapters::PostgreSQLAdapter
        raise NotImplementedError, 'Only PostgreSQL (PG gem) is supported'
      end
      conn = connection.instance_variable_get(:@connection)
      import = Vostok::Import.new(conn)
      import.start(table_name, columns, values)
    end
  end
end

ActiveRecord::Base.extend Vostok::Rails
