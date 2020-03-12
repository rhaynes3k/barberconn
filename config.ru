require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

#put other controllers here
use Rack::MethodOverride
use ClientsController
use BarbersController
run ApplicationController
