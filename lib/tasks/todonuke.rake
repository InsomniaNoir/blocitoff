namespace :todo do
  desc "Delete tasks over seven days old."
  task delete_tasks: :environment do
    Task.where("created_at <= ?", Time.now - 7.days).destroy_all
  end
end
