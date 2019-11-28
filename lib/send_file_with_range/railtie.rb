# frozen_string_literal: true

require 'send_file_with_range/controller_extension'

module SendFileWithRange
  class Railtie < ::Rails::Railtie
    initializer 'send_file_with_range.prepend' do
      ActionController::DataStreaming.send :prepend, SendFileWithRange::ControllerExtension
    end
  end
end
