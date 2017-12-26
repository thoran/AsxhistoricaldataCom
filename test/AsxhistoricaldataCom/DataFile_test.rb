require 'Date/business_dayQ'
require 'minitest/autorun'
require 'minitest-spec-context'
require 'ostruct'
require 'mocha/mini_test'

require 'AsxhistoricaldataCom/DataFile'

describe AsxhistoricaldataCom::DataFile do

  let(:first_market_day_number) do
    (1..7).detect do |day_number|
      Date.new(this_year, last_month_numeric, day_number).business_day?
    end
  end
  let(:last_month){(Month.this - 1)}
  let(:last_month_numeric){last_month.to_num}
  let(:last_month_long){last_month.to_long}
  let(:return_object){OpenStruct.new(body: nil)}
  let(:this_year){Date.today.year}

  describe ".all" do
    context "with year only" do
      it "calls HTTP.get" do
        HTTP.expects(:get).returns(return_object).at_least_once
        AsxhistoricaldataCom::DataFile.all(year: this_year)
      end
    end

    context "Year and numeric month" do
      it "calls HTTP.get" do
        HTTP.expects(:get).returns(return_object).at_least_once
        AsxhistoricaldataCom::DataFile.all(year: this_year, month: last_month_numeric)
      end
    end

    context "Year and long month" do
      it "calls HTTP.get" do
        HTTP.expects(:get).returns(return_object).at_least_once
        AsxhistoricaldataCom::DataFile.all(year: 2017, month: last_month_long)
      end
    end

    context "Year, numeric month, and numeric day" do
      it "calls HTTP.get" do
        HTTP.expects(:get).returns(return_object).at_least_once
        AsxhistoricaldataCom::DataFile.all(year: this_year, month: last_month_numeric, day: first_market_day_number)
      end
    end

    context "Year, long month, and numeric day" do
      it "calls HTTP.get" do
        HTTP.expects(:get).returns(return_object).at_least_once
        AsxhistoricaldataCom::DataFile.all(year: 2017, month: last_month_long, day: first_market_day_number)
      end
    end
  end

  describe ".urls" do
    context "Year only" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year)}

      it "matches at least one file" do
        data_file_urls.each do |data_file_url|
          data_file_url.must_match '2017'
        end
      end
    end

    context "Year and numeric month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: last_month_numeric)}

      it "matches at least one file" do
        data_file_urls.first.must_match '201708'
      end
    end

    context "Year and long month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: last_month_numeric)}

      it "matches at least one file" do
        data_file_urls.first.must_match '201708'
      end
    end

    context "Year, numeric month, and numeric day" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: last_month_numeric, day: first_market_day_number)}

      it "matches at least one file" do
        data_file_urls.first.must_match '20170801'
      end
    end

    context "Year, long month, and numeric day" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: last_month_long, day: first_market_day_number)}

      it "matches at least one file" do
        data_file_urls.first.must_match '20170801'
      end
    end
  end

  describe ".all_urls" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:all_urls)}

    it "includes the 1997 to 2006 zip file" do
      data_file_urls.must_include "https://www.asxhistoricaldata.com/data/1997-2006.zip"
    end
  end

  describe ".urls_on_home_page" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:urls_on_home_page)}

    it "matches at least one file" do
      data_file_urls.first.must_match "https://www.asxhistoricaldata.com/data/week#{this_year}"
    end
  end

  describe ".urls_on_archive_page" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:urls_on_archive_page)}

    it "includes the 1997 to 2006 zip file" do
      data_file_urls.must_include 'https://www.asxhistoricaldata.com/data/1997-2006.zip'
    end
  end
end
