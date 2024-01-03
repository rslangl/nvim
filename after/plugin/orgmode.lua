local status, orgmode = pcall(require, 'orgmode')
if not status then
  print("Could not load plugin: orgmode")
  return
end

orgmode.setup_ts_grammar()
