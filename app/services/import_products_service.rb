class ImportProductsService
  FILE_PATH = Rails.root.join('csv_storage', 'MOCK_DATA.csv').freeze
  BATCH_SIZE = 100

  attr_reader :file_path

  def initialize(file_path = FILE_PATH)
    @file_path = file_path
  end

  def perform
    process_file
  end

  private

  def process_file
    File.open(file_path, 'r') do |file|
      proccess_slices(file)
    end
  end

  def proccess_slices(file)
    headers = file.first.strip
    file.lazy.each_slice(BATCH_SIZE) do |rows|
      products_to_save = process_csv(rows, headers)
      save_products(products_to_save)
    end
  end

  def process_csv(rows, headers)
    CsvProcessor.new(rows, headers).perform
  end

  def save_products(products_to_save)
    ProductsSaver.new(products_to_save).save
  end
end
