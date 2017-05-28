require 'net/http'
require 'im-kayac'

status = Net::HTTP.get_response(URI.parse('http://jyugyou.mktakuya.net/feeds?class=AP1')).code

if status != '200'
  ImKayac.to('mktakuya').password(ENV['IM_KAYAC_PASSWORD']).post('jyugyou iCal feed ERROR')
end
