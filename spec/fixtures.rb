module Fixtures
  FIXTURES = {
    espi_application_information: "ESPIApplicationInformation.xml",
    espi_authorization: "ESPIAuthorization.xml",
    espi_electric_power_usage_summary: "ESPIElectricPowerUsageSummary.xml",
    espi_interval_block: "ESPIIntervalBlock.xml",
    espi_local_time_parameters: "ESPILocalTimeParameters.xml",
    espi_reading_type: "ESPIReadingType.xml",
    espi_reading_types: "ESPIReadingTypes.xml",
    espi_usage_point: "ESPIUsagePoint.xml",
    espi_usage_point_meter_reading: "ESPIUsagePointMeterReading.xml",
    espi_usage_point_meter_readings: "ESPIUsagePointMeterReadings.xml",
    espi_usage_points: "ESPIUsagePoints.xml",
    espi_usage_summaries: "ESPIUsageSummaries.xml",
    espi_usage_summary: "ESPIUsageSummary.xml",
    pge_application_information: "PGEApplicationInformation.xml",
    pge_authorization: "PGEAuthorization.xml",
    pge_interval_block: "PGEIntervalBlock.xml",
    pge_local_time_parameters: "PGELocalTimeParameters.xml",
    pge_reading_type: "PGEReadingType.xml",
    pge_usage_point: "PGEUsagePoint.xml",
    pge_usage_summaries: "PGEUsageSummaries.xml",
    pge_usage_summary: "PGEUsageSummary.xml",
    pge_retail_customer: "PGERetailCustomer.xml",
    sce_retail_customer: "BulkSCERetailCustomer.xml",
    sce_usage_summary_and_interval_block: "BulkSCEUsageSummaryAndIntervalBlock.xml",
    sce_interval_block: "BulkSCEIntervalBlock.xml"
  }

  ##
  # Dynamically load fixtures and define them as methods
  FIXTURES.each do |method, filename|
    define_method(method) { load_fixture filename }
  end

  ##
  # Reads in the XML fixture file
  def load_fixture(filename)
    File.read "#{File.dirname __FILE__}/fixtures/#{filename}"
  end
end
