class Brand
    require 'moxiworks_platform'

    def self.get_brand(companyid)
        brand = MoxiworksPlatform::Brand.find(moxi_works_company_id: companyid)
      end
    
      def self.get_company(companyid)
        platform_identifier = '8e283bce-bcbd-11e6-b263-0050569c54ad'
        platform_secret = 'U0ib2cKffiq6eyGlH6fI2Att'
        MoxiworksPlatform::Credentials.new(platform_identifier, platform_secret)
        companies = MoxiworksPlatform::Company.search
      end
end
