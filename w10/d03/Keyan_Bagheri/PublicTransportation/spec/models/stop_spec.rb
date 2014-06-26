require 'spec_helper'

describe Stop do
  it { should validate_presence_of(:station_id) }
  it { should validate_presence_of(:subway_line_id) }
  it { should belong_to(:subway_line) }
  it { should belong_to(:station) }

end
