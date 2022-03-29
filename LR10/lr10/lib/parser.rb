class Parser

  def list_device
    url = 'https://www.eldorado.ru/c/noutbuki/'
    connection = URI.open(url)
    html = connection.read
    nokogiri_doc = Nokogiri::HTML(html)
    connection.close
    nokogiri_doc.search('li.EF')
  end

  def parse
    devices = list_device
    devices.each do |dev|
      price = dev.search('span.UR').text.strip
      name = dev.search('a.NF').text.strip
      device = Device.create
      device.name = name
      device.price = price
      device.os = ''
      device.resolution = ''
      device.dimensity = ''
      device.frequency = ''
      device.cpu_vendor = ''
      device.cpu_model = ''
      device.ram_voliume = ''
      device.ram_type = ''
      device.rom_volume = ''
      device.graphics = ''
      device.color = ''
      # description = dev.search('div.YM').search('div.aN')
      # device = Device.create
      # device.os = description[0]&.text&.strip
      # device.resolution = description[1]&.text&.strip
      # device.dimensity = description[2]&.text&.strip
      # device.frequency = description[3]&.text&.strip
      # device.cpu_vendor = description[4]&.text&.strip
      # device.cpu_model = description[5]&.text&.strip
      # device.ram_voliume = description[6]&.text&.strip
      # device.ram_type = description[7]&.text&.strip
      # device.rom_type = description[8]&.text&.strip
      # device.rom_volume = description[9]&.text&.strip
      # device.graphics = description[10]&.text&.strip + description[11]&.text&.strip
      # device.color = description[12]&.text&.strip

      device.save
    end
  end

end