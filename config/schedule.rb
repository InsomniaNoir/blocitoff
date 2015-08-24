desc "Run Task to delete app tasks over 7 days old."
every 1.day, :at => '00:01' do
  rake 'todo:delete_tasks'
end