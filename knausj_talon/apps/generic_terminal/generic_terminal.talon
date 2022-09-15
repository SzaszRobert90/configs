tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa: 
    user.terminal_list_directories()
lisa all: 
    user.terminal_list_all_directories()
katie [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_directory_root()
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
kill all: user.terminal_kill_all()

pip install: "pip install " 
scraper run: "scrapy crawl " 
scraper run maps: "export USE_PROXIES=True && scrapy crawl g_maps" 
scraper run revisit: "export USE_PROXIES=True && scrapy crawl -a method=revisit --loglevel=INFO "
docker run places: "docker run -v /Users/bws/work/tmp/:/tmp/ -v /etc/azkaban/:/etc/azkaban/ -v `pwd`/:/app/ -it uldplaces /bin/bash\n"
activate python: "workon nvim\n"
go scraper: "cd ~/work/uld_scraper\n" 
go places: "cd ~/work/uld-places-explorer\n" 
go analytics: "cd ~/work/uld-analytics\n" 
go source: "cd src/python\n" 
kill: "kill -9 %1"
debug: "import ipdb; ipdb.set_trace()"
shell: 
  insert("ssh rszasz@")
  edit.paste()
  key(enter)

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()
