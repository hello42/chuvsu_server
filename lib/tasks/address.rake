namespace :address do
  desc "rebuild geo coord for all address"
  task rebuild: :environment do
    Address.rebuild_coord
    p "finish"
  end

end
