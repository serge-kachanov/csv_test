require 'csv'

class CsvProcessor
  attr_reader :rows, :headers

  def initialize(rows, headers)
    @rows = rows
    @headers = headers
  end

  def perform
    csv_rows = parse_rows
    process_rows(csv_rows)
  end

  private

  def parse_rows
    CSV.new(rows.join, write_headers: true, headers: headers)
  end

  def process_rows(csv_rows)
    csv_rows.map { |row| ProductRowAdapter.new(row).perform }
  end
end
