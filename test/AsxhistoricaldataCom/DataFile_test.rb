require 'Date/business_dayQ'
require 'minitest/autorun'
require 'minitest-spec-context'
require 'mocha/minitest'
require 'ostruct'
require 'webmock/minitest'

require 'AsxhistoricaldataCom'

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
  let(:this_year){2017}

  let(:root_body) do
    root_filename = File.expand_path(File.join('..', '..', 'fixtures', 'root.html'), __FILE__)
    File.read(root_filename)
  end
  let(:archive_body) do
    archive_filename = File.expand_path(File.join('..', '..', 'fixtures', 'archive.html'), __FILE__)
    File.read(archive_filename)
  end

  let(:zip_file_contents0) do
    root_filename = File.expand_path(File.join('..', '..', 'fixtures', 'week20200529.zip'), __FILE__)
    File.read(root_filename)
  end
  let(:zip_file_contents1) do
    archive_filename = File.expand_path(File.join('..', '..', 'fixtures', 'week20200605.zip'), __FILE__)
    File.read(archive_filename)
  end

  let(:array_of_datafiles) do
    [
      AsxhistoricaldataCom::DataFile.new('https://www.asxhistoricaldata.com/data/week20200529.zip'),
      AsxhistoricaldataCom::DataFile.new('https://www.asxhistoricaldata.com/data/week20200605.zip'),
    ]
  end

  before do
    stub_request(:get, 'https://www.asxhistoricaldata.com/').
      with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: root_body)
    stub_request(:get, 'https://www.asxhistoricaldata.com/archive/').
      with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: archive_body)
    stub_request(:get, "https://www.asxhistoricaldata.com/data/week20200529.zip").
      with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: zip_file_contents0, headers: {})
    stub_request(:get, 'https://www.asxhistoricaldata.com/data/week20200605.zip').
      with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: zip_file_contents1, headers: {})
  end

  describe ".retrieve" do
    before do
      AsxhistoricaldataCom::DataFile.expects(:all).returns(array_of_datafiles)
    end

    context "with no args" do
      it "returns an Array" do
        expect(AsxhistoricaldataCom::DataFile.retrieve.class).must_equal Array
      end

      it "returns an Array of instances of AsxhistoricaldataCom::DataFile" do
        expect(AsxhistoricaldataCom::DataFile.retrieve.first.class).must_equal AsxhistoricaldataCom::DataFile
      end
    end
  end

  describe ".retrieve_decompressed" do
    before do
      AsxhistoricaldataCom::DataFile.expects(:all).returns(array_of_datafiles)
    end

    context "with no args" do
      it "returns an Array" do
        expect(AsxhistoricaldataCom::DataFile.retrieve_decompressed.class).must_equal Array
      end

      it "returns an Array of instances of StringIO" do
        expect(AsxhistoricaldataCom::DataFile.retrieve_decompressed.first.class).must_equal StringIO
      end
    end
  end

  describe ".all" do
    context "with no args" do
      it "calls HTTP.get" do
        HTTP.expects(:get).returns(return_object).at_least_once
        AsxhistoricaldataCom::DataFile.all
      end
    end

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
          expect(data_file_url).must_match /#{this_year}/
        end
      end
    end

    context "Year only for 2010" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: 2010)}

      it "matches at least one file" do
        expect(data_file_urls).wont_be_empty
      end

      it "matches at least one file" do
        expect(data_file_urls).must_equal(['https://www.asxhistoricaldata.com/data/2007-2012.zip'])
      end
    end

    context "Year and numeric month for last month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: last_month_numeric)}

      it "matches at least one file" do
        expect(data_file_urls).wont_be_empty
      end
    end

    context "Year and numeric month for January this year" do
      let(:month){Month.new(1)}
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: month.to_i)}

      it "matches at least one file" do
        expect(data_file_urls).wont_be_empty
      end

      it "matches at least one file" do
        expect(data_file_urls.first).must_match "#{this_year}#{month.to_short.downcase}"
      end
    end

    context "Year 2010 and numeric month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: 2010, month: last_month_numeric)}

      it "matches at least one file" do
        expect(data_file_urls).wont_be_empty
      end

      it "matches at least one file" do
        expect(data_file_urls).must_equal(['https://www.asxhistoricaldata.com/data/2007-2012.zip'])
      end
    end

    context "Year and long month for last month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: last_month_long)}

      it "matches at least one file" do
        expect(data_file_urls).wont_be_empty
      end
    end

    context "Year and long month for January this year" do
      let(:month){Month.new(1)}
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: this_year, month: month.to_i)}

      it "matches at least one file" do
        expect(data_file_urls).wont_be_empty
      end

      it "matches at least one file" do
        expect(data_file_urls.first).must_match "#{this_year}#{month.to_short.downcase}"
      end
    end

    context "Year 2010 and long month" do
      let(:data_file_urls){AsxhistoricaldataCom::DataFile.urls(year: 2010, month: last_month_long)}

      it "matches at least one file" do
        expect(data_file_urls).wont_be_empty
      end

      it "matches at least one file" do
        expect(data_file_urls).must_equal(['https://www.asxhistoricaldata.com/data/2007-2012.zip'])
      end
    end
  end

  describe ".all_urls" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:all_urls)}

    it "includes the 1997 to 2006 zip file" do
      expect(data_file_urls).must_include 'https://www.asxhistoricaldata.com/data/1997-2006.zip'
    end
  end

  describe ".urls_on_archive_page" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:urls_on_archive_page)}

    it "includes the 1997 to 2006 zip file" do
      expect(data_file_urls).must_include 'https://www.asxhistoricaldata.com/data/1997-2006.zip'
    end
  end

  describe ".urls_on_home_page" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:urls_on_home_page)}

    it "matches at least one file" do
      expect(data_file_urls.first).must_match "https://www.asxhistoricaldata.com/data/week#{this_year}"
    end
  end

  describe ".multi_year_zip_files" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:multi_year_zip_files)}

    it "includes the 1997 to 2006 zip file" do
      expect(data_file_urls).must_include 'https://www.asxhistoricaldata.com/data/1997-2006.zip'
    end
  end

  describe ".multi_month_zip_files" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:multi_month_zip_files)}

    it "includes the January to June zip file" do
      expect(data_file_urls).must_include 'https://www.asxhistoricaldata.com/data/2017jan-june.zip'
    end
  end

  describe ".weekly_zip_files" do
    let(:data_file_urls){AsxhistoricaldataCom::DataFile.send(:weekly_zip_files)}

    it "includes the weekly zip files" do
      data_file_urls.each do |data_file_url|
        expect(data_file_url).must_match /week#{this_year}/
      end
    end
  end

end
