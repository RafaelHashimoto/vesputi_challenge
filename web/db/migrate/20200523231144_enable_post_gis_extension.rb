class EnablePostGisExtension < ActiveRecord::Migration[6.0]
  def up
    ActiveRecord::Base.connection.execute('CREATE EXTENSION postgis;')
  end

  def down
    ActiveRecord::Base.connection.execute('DROP EXTENSION postgis;')
  end
end
