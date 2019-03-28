require 'csv'

class CsvProcessor
  attr_reader :rows, :headers

  def initialize(rows, headers)
    @rows = rows
    @headers = headers
  end

  def perform
    process_rows
  end

  private

  def process_rows
    csv_rows = CSV.new(rows.join, write_headers: true, headers: headers)
    adapt_rows(csv_rows)
  end

  def adapt_rows(csv_rows)
    csv_rows.map { |row| ProductRowAdapter.new(row).perform }
  end
end
