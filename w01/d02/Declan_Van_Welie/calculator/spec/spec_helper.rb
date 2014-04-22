def capture_stdout(&block)
  original_stdout = $stdout
  $stdout = fake = StringIO.new
  begin
    yield
  ensure
    $stdout = original_stdout
  end
  fake.string
end

def capture_stdin(&block)
  original_stdout = $stdin
  $stdin = fake = StringIO.new
  begin
    yield
  ensure
    $stdin = original_stdout
  end
  fake.string
end
