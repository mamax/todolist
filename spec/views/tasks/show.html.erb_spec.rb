require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :task_name => "Task Name",
      :project_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Task Name/)
    expect(rendered).to match(/1/)
  end
end
