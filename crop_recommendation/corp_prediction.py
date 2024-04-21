import pickle
def recommend_crop(data):
    crop_recommendation_model_path = './models/RandomForest.pkl'
    print("above from prediction")
    print(data[0], "model ki prediction")  # Print the entire data
    crop_recommendation_model = pickle.load(open(crop_recommendation_model_path, 'rb'))
    print(data, "model ki prediction")
    prediction = crop_recommendation_model.predict([data[0]])
    print(prediction)  # Print the prediction
    return prediction[0]  # Return the predicted crop
