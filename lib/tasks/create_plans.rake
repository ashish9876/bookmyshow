namespace :create_plans do
  desc 'To run use: rake create_plans:create'
  task create: :environment do
    Plan.create(nickname: "Gold", amount: "100")
    Plan.create(nickname: "Silver" , amount: "70")
    Plan.create(nickname: "Platinum", amount: "50")
  end
end