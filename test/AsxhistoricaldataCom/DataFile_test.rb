require 'Date/business_dayQ'
require 'minitest/autorun'
require 'minitest-spec-context'
require 'ostruct'
require 'mocha/mini_test'
require 'webmock/minitest'

require 'AsxhistoricaldataCom/DataFile'

WebMock.disable_net_connect!(allow_localhost: true)

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

  let(:root_body) do
    root_filename = File.expand_path('../../fixtures/root.html', __FILE__)
    File.read(root_filename)
  end
  let(:archive_body) do
    archive_filename = File.expand_path('../../fixtures/archive.html', __FILE__)
    File.read(archive_filename)
  end

  before do
    stub_request(:get, 'http://www.asxhistoricaldata.com/').
      with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: root_body)
    stub_request(:get, 'http://www.asxhistoricaldata.com/archive/').
      with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: archive_body)
  end

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
        AsxhistoricaldataCom::DataFile.all(year: this_year, month: last_month_long)
      end
    end
  end

  describe ".urls" do
    context "Year only for this year" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year)}

      it "matches at least one file" do
        data_file_urls.each do |data_file_url|
          data_file_url.must_match /#{this_year}/
        end
      end
    end

    context "Year only for 2010" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: 2010)}

      it "matches at least one file" do
        data_file_urls.wont_be_empty
      end

      it "matches at least one file" do
        data_file_urls.must_equal(['https://www.asxhistoricaldata.com/data/2007-2012.zip'])
      end
    end

    context "Year and numeric month for last month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: last_month_numeric)}

      it "matches at least one file" do
        data_file_urls.wont_be_empty
      end

      it "matches at least one file" do
        data_file_urls.first.must_match "#{this_year}#{'%02d' % last_month_numeric}"
      end
    end

    context "Year and numeric month for January this year" do
      let(:month){Month.new(1)}
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: month.to_i)}

      it "matches at least one file" do
        data_file_urls.wont_be_empty
      end

      it "matches at least one file" do
        data_file_urls.first.must_match "#{this_year}#{month.to_short.downcase}"
      end
    end

    context "Year 2010 and numeric month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: 2010, month: last_month_numeric)}

      it "matches at least one file" do
        data_file_urls.wont_be_empty
      end

      it "matches at least one file" do
        data_file_urls.must_equal(['https://www.asxhistoricaldata.com/data/2007-2012.zip'])
      end
    end

    context "Year and long month for last month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: last_month_long)}

      it "matches at least one file" do
        data_file_urls.wont_be_empty
      end

      it "matches at least one file" do
        data_file_urls.first.must_match "#{this_year}#{'%02d' % last_month_numeric}"
      end
    end

    context "Year and long month for January this year" do
      let(:month){Month.new(1)}
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: month.to_i)}

      it "matches at least one file" do
        data_file_urls.wont_be_empty
      end

      it "matches at least one file" do
        data_file_urls.first.must_match "#{this_year}#{month.to_short.downcase}"
      end
    end

    context "Year 2010 and long month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: 2010, month: last_month_long)}

      it "matches at least one file" do
        data_file_urls.wont_be_empty
      end

      it "matches at least one file" do
        data_file_urls.must_equal(['https://www.asxhistoricaldata.com/data/2007-2012.zip'])
      end
    end
  end

  describe ".all_urls" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:all_urls)}

    it "includes the 1997 to 2006 zip file" do
      data_file_urls.must_include 'https://www.asxhistoricaldata.com/data/1997-2006.zip'
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
