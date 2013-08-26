PrivatePub.subscribe "/messages/new", (data, channel) ->
  console.log data.message.content if data