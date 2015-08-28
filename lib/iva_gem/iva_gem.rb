require 'nokogiri'
require 'open-uri'

module IvaSearch
  class Tax
    URL_HACIENDA = 'http://www.mh.gob.sv/portal/page/portal/PMH/Novedades/Calendario'
    CALENDAR = "//div[@class = 'ct-calendar-content']/h3"

    def self.getDates()
      doc = getHtml()
      calendar = get_calendar(doc)

    end

    def self.getHtml()
      Nokogiri::HTML(open(URL_HACIENDA))
    end

    def self.get_calendar(page)
      calendar = page.xpath(CALENDAR)
      item = calendar.map { |t| t.text}
    end


  end
end
