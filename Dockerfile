FROM jupyter/scipy-notebook

WORKDIR /app
RUN conda install -c conda-forge streamlit click==8.0.4 -y

CMD exec streamlit run app.py --server.port $PORT --browser.serverAddress 0.0.0.0
