local status, orgmode = pcall(require, 'orgmode')
if not status then
  print("Could not load plugin: orgmode")
  return
end

orgmode.setup_ts_grammar()

orgmode.setup({
  org_agenda_files = { '~/Documents/org/*' },
  org_default_notes_file = { '~/Documents/org/refile.org' },
})
