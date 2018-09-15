namespace :reset do
  desc "Delete all records and seed"
  task delete_and_seed: :environment do
    Course.delete_all
    Session.delete_all
    Literature.delete_all
    ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

  end

  namespace :db do
  desc 'Drop, create, migrate then seed the development database'
    task reseed: [ 'db:reset', 'db:seed' ] do
      puts 'Reseeding completed.'
    end
  end
end
