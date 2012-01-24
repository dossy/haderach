namespace :alfred do
    file "alfred/kwisatz.hadera.ch.alfredextension" do
        sh "zip -j alfred/kwisatz.hadera.ch.alfredextension alfred/kwisatz.hadera.ch/*.plist"
    end

    task :extension => "alfred/kwisatz.hadera.ch.alfredextension"
end
