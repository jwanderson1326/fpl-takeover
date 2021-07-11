build:
	docker build -t fpl-takeover .

run:
	docker run -p 8888:8888 --rm \
		-v /home/justin/personal/projects/fpl-takeover/scripts:/home/jovyan/work \
		--name fpl-takeover \
		fpl-takeover:latest

jupyter: build run
