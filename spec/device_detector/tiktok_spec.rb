# frozen_string_literal: true

require_relative '../spec_helper'

describe DeviceDetector::Device do
  subject { DeviceDetector::Device.new(user_agent) }

  alias_method :device, :subject

describe '#name' do
    let(:user_agent) { 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 musical_ly_16.2.0 JsSdk/2.0 NetType/WIFI Channel/App Store ByteLocale/it Region/IT AppSkin/white RevealType/Dialog WKWebView/1' }

    it 'finds TikTok App' do
      device.name == 'TikTok App'
    end


    let(:user_agent) { 'Mozilla/5.0 (Linux; Android 8.1.0; DUB-LX1 Build/HUAWEIDUB-LX1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.96 Mobile Safari/537.36 trill_2021603050 JsSdk/1.0 NetType/WIFI Channel/googleplay AppName/musical_ly app_version/16.3.5 ByteLocale/it-IT ByteFullLocale/it-IT Region/IT AppSkin/white' }

    it 'finds TikTok App' do
      device.name == 'TikTok App'
    end
  end
end
