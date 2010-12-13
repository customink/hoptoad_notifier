<% if Rails::VERSION::MAJOR < 3 && Rails::VERSION::MINOR < 2 -%>
require 'hoptoad_notifier/rails'
<% end -%>
if defined?(HoptoadNotifier)
  HoptoadNotifier.configure do |config|
    config.api_key = <%= api_key_expression %>
  end
end