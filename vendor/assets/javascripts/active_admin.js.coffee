#= require active_admin/base
#= require epiceditor/js/epiceditor.min

$ ->
  if $('#editor').length > 0
    opts =
      container: 'editor'
      textarea: 'post_body'
      basePath: '/assets/epiceditor'
      clientSideStorage: false

    editor = new EpicEditor(opts).load()
