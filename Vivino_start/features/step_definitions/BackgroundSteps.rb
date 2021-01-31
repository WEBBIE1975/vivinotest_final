Given('I use config file AccountInfo2') do
  begin
    AccountInfo = YAML.load_file("features/support/AccountInfo2.yml")
  end
end

