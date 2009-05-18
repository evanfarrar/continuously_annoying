%w{rubygems open-uri hpricot}.each{|g|require g}
filename = "/dev/ttyUSB0"
@f = File.open(filename, 'w+')
if (Hpricot(open("http://ci.transis.net"))/"li.failed").any?
  @f.putc ?g
else
  @f.putc ?s
end
