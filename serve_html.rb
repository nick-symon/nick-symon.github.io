require 'webrick'

# Set the directory containing your HTML file
root = File.expand_path '.'

# Set up WEBrick server configuration
server = WEBrick::HTTPServer.new Port: 8000, DocumentRoot: root

# Handle Ctrl+C to gracefully shut down the server
trap 'INT' do server.shutdown end

# Start the server
server.start