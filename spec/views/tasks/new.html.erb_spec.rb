require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :task_name => "MyString",
      :project_id => 1
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_task_name[name=?]", "task[task_name]"

      assert_select "input#task_project_id[name=?]", "task[project_id]"
    end
  end
end
