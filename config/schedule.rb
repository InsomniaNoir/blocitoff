every 1.day, :at => '00:01' do
  rake 'todo:delete_tasks'
end