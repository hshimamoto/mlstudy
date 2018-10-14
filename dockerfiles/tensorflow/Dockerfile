FROM tensorflow/tensorflow:latest-py3

RUN useradd -m mlstudy

USER mlstudy
WORKDIR /home/mlstudy
RUN jupyter notebook --generate-config \
	&& sed -i \
		-e "s/^#c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '0.0.0.0'/" \
		-e 's/^#c.NotebookApp.port /c.NotebookApp.port/' \
		.jupyter/jupyter_notebook_config.py
