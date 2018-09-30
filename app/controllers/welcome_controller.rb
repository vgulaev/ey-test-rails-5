class WelcomeController < ApplicationController
  def ddd
    3.times do |ss|
      a = AnyDatum.new
      a.title = (0...20).map { ('a'..'z').to_a[rand(26)] }.join
      a.text = (0...20).map { ('a'..'z').to_a[rand(26)] }.join
      a.save
    end
  end

  def index
    ddd if 0 == AnyDatum.count
    @some_data = "Some new data"
    @html = "<table>"
    AnyDatum.all.map do |x|
      @html << "<tr>"
      @html << "<td>#{x.title}</td>"
      @html << "<td>#{x.text}</td>"
      @html << "</tr>"
    end
    @html << "</table>"
  end
end
