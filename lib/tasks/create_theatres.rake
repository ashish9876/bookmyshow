namespace :create_theatre do
  desc 'To run use: rake create_theatre:create'
  task create: :environment do
    Theatre.create(name: "Inox")
    Theatre.create(name: "PVR")
    Theatre.create(name: "Aastha")
    Theatre.create(name: "Kastur")
    Theatre.create(name: "Madhumilan")
  end
end