build:
	docker build -t loeffel/tensorflow-onnx:0.1.0 .

run:
	docker run --rm \
		--name=tensorflow-onnx \
		-v ${PWD}/data:/data \
		loeffel/tensorflow-onnx:0.1.0 \
		-m tf2onnx.convert \
		--saved-model /data \
		--output /data/model.onnx