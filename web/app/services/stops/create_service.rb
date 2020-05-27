require 'csv'

module Stops
  class CreateService
    def initialize(file)
      @file = file
      @status = true
      @timestamp = DateTime.now
    end

    def run
      Stop.transaction do
        begin
          csv = CSV.open(File.open(@file), 'r:bom|utf-8')
          result = Stop.insert_all(attributes_bulk(csv))
          @status = result.rows.any?
        rescue => e
          @status = false
          raise ActiveRecord::Rollback
        end
      end
      @status
    end

    private

    def attributes_bulk(csv)
      csv_attributes = csv.first.map(&:to_sym)
      csv.drop(1).map do |line|
        map_attributes(csv_attributes, line).merge(
          { created_at: @timestamp, updated_at: @timestamp }
        )
      end
    end

    def map_attributes(csv_attributes, line)
      Hash[csv_attributes.zip(line)]
    end
  end
end
