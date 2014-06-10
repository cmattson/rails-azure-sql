class EnableIndexesOnMigrations < ActiveRecord::Migration
  def change
    execute <<-SQL
      CREATE CLUSTERED INDEX
        [idx_schema_migrations_version]
        ON
        [schema_migrations] ([version])
    SQL
  end
end
