function d-build {
	docker build -f dev.Dockerfile -t aaronmsft/dev .
}

function d-build-test {
	docker build -f dev.Dockerfile -t test .
}

function d-run {
	docker run --rm \
		-v ${PWD}:/pwd/ \
		-e USER=root \
		--name dev \
		-it aaronmsft/dev
}

function d-run-new {
	docker run --rm \
		-v ${PWD}:/pwd/ \
		-e USER=root \
		-it aaronmsft/dev
}

function d-run-docker {
	docker run --rm \
		-v ~/.ssh/:/root/.ssh/ \
		-v ~/.docker/:/root/.docker/ \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v ${PWD}:/pwd/ \
		-e USER=root \
		--name dev \
		-it aaronmsft/dev
}

function d-run-d {
	docker run --rm \
		-v ~/.ssh/:/root/.ssh/ \
		-v ~/.docker/:/root/.docker/ \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v ${PWD}:/pwd/ \
		-e USER=root \
		--name dev \
		-id aaronmsft/dev \
		sleep infinity
}

function d-rm {
	docker rm -f dev
}	
	
function d-push {
	docker push aaronmsft/dev
}

function d-exec {
	docker exec -it dev zsh
}
