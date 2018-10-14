FROM tensorflow/tensorflow:latest-py3

# tensorflow/tensorflow:latest-py3 is based ubuntu
RUN apt-get update \
	&& apt-get install -y git vim

# nbextensions
RUN pip install jupyter_contrib_nbextensions

RUN useradd -m mlstudy

USER mlstudy
WORKDIR /home/mlstudy
RUN echo "PATH=$PATH:~/.local/bin" >> .bashrc
RUN jupyter notebook --generate-config \
	&& sed -i \
		-e "s/^#c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '0.0.0.0'/" \
		-e 's/^#c.NotebookApp.port /c.NotebookApp.port/' \
		.jupyter/jupyter_notebook_config.py
# vim bindings
RUN export PATH=$PATH:~/.local/bin \
	&& jupyter contrib nbextension install --user \
	&& mkdir -p $(jupyter --data-dir)/nbextensions \
	&& (cd $(jupyter --data-dir)/nbextensions; \
		git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding) \
	&& jupyter nbextension enable vim_binding/vim_binding
