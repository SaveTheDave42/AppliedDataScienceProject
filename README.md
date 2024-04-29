# AppliedDataScienceProject

# To run the code, you'll need some packages. Do the following:
conda create --name adsprenv python=3.11
conda activate adspenv

# Navigate to the project directory with cd, where the requirements file is, and do:
pip install -r requirements.txt

# Using the project
Use the docker-compose.yml to start the required containers for this project
Use the "PrepareDatabase.ipynb" to setup the table in the database if you want to use the "Scraper.ipynb"
You can use the existing database file in the folder "DB Export" if you want and import it into mySQL via Adminer. The scraper will take a long time to finish, so it is recommended to just import the database file
Use "DataExploration.ipynb" to get stats about the data in the database
Use "KNN.ipynb" to train a KNN. Use "RandomForest.ipynb" to train a Random Forest. Since Random Forest performs better, the project continues with RandomForest. You do not need to run RandomForest to continue, the exported model is available as "randomforest.joblib"
Use "Predictor.ipynb" to start making predictions about house prices

# In our opinion, we have done the following to get the points:
Webscraping: Robust and state-of-the-art webscraping to access a variety of real estate data
Random Forest / KNN: Use of different approaches to make model predictions. Optimization of Random Forest to achieve the most accurate predictions possible (sophisticated data cleanup, various IQR parameters tested, influence of input variables identified, intelligent auto-optimization of RF when the data basis changes)
Ready-to-go: Thanks to RF Model in joblib format in Github, prices for real estate can be predicted directly. Thanks to SQL export, data exploration and retraining of RF can be performed again without web scraping.
Data analysis: Extensive visual data analysis including the use of GIS for visual geographical analysis
WebApi: Use of WebApi to convert address inputs into coordinates
Frontend: Use of widget within Jupyter Notebook as frontend for model predictions
Documentation: ReadMe for replicability incl. virtual environment, code documentation, clear Jupyter notebooks
Provision of the code on GitHub: https://github.com/SaveTheDave42/AppliedDataScienceProject