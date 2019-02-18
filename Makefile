start_dev:
	./util.sh export_env && flask run


start:
	python main.py

create_db:
	./util.sh create_db

drop_db:
	./util.sh drop_db
