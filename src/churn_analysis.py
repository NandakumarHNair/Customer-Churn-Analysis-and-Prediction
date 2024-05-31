import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import precision_score
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline

# Load dataset
df = pd.read_csv('customer_churn.csv') 

# Data preprocessing
# Handling missing values
df = df.dropna()

# Encoding categorical variables
categorical_features = ['Gender', 'Geography']  # Example categorical features
numerical_features = ['CreditScore', 'Age', 'Tenure', 'Balance', 'NumOfProducts', 'EstimatedSalary']

preprocessor = ColumnTransformer(
    transformers=[
        ('num', StandardScaler(), numerical_features),
        ('cat', OneHotEncoder(), categorical_features)
    ])

# Define features and target variable
X = df[numerical_features + categorical_features]
y = df['Exited']

# Split data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Logistic Regression model
model = Pipeline(steps=[
    ('preprocessor', preprocessor),
    ('classifier', LogisticRegression())
])

model.fit(X_train, y_train)
y_pred = model.predict(X_test)

# Evaluate model
precision = precision_score(y_test, y_pred)
print(f'Logistic Regression Precision: {precision}')

# Save the predictions
df_results = pd.DataFrame({'Actual': y_test, 'Predicted': y_pred})
df_results.to_csv('churn_predictions.csv', index=False)
