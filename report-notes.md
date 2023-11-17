Diabetes Model Optimization

Data Preprocessing

* Binned BMI because of the distribution:
   2 bins:
         values less than = 15.
         values greater than = 37.
         
* Ran Random OverSampler

* Ran StandardScaler


Sequential Model:

First Run:  2 hidden layers.  Units = 5, 3  for each layer.  
        
             Loss: 0.21520914137363434, Accuracy: 0.8967213034629822
            
            
Second Run:  2 hidden layers, Units = 80, 30 for eac layer.

             1430/1430 - 2s - loss: 0.1580 - accuracy: 0.9245 - 2s/epoch - 1ms/step
             Loss: 0.15804734826087952, Accuracy: 0.9245027303695679

             Left Epoch = 50.  Increasing to 100. No better result.
             
Third Run:   3 hidden layers, Units = 80, 30, 4  for each layer.

             1430/1430 - 3s - loss: 0.1524 - accuracy: 0.9264 - 3s/epoch - 2ms/step
             Loss: 0.15241362154483795, Accuracy: 0.9263606667518616


Random Forest Model:

 * flexible, easy-to-use machine learning algorithm that produces, even without hyper-parameter tuning
   one of the most-used algorithms, due to its simplicity and diversity (it can be used for both 
   classification and regression tasks.

* Ran Random OverSampler

* Ran StandardScaler

CONFUSION MATRIX FOR RANDOM FOREST MODEL

              Predicted 0   Predicted 1

    Actual 0       22420          490

    Actual 1           0         22840

Predicted Yes When Yes Diabetes =  22420 

Predicted Yes When No Diabetes  =      0

Predicted No Diabetes When No   =  22840 

Predicted Yes When No           =    490

Accuracy Score : 0.9892896174863388    (22420 + 22840)/45750
Classification Report


              precision    recall  f1-score   support

           0       1.00      0.98      0.99     22910
           1       0.98      1.00      0.99     22840

    accuracy                           0.99     45750
   macro avg       0.99      0.99      0.99     45750
weighted avg       0.99      0.99      0.99     45750

Precision is a measure of how many True Positives were actually correct.

It is defined as the ratio of true positives (TP) to the sum of true and false positives (TP+FP).

     * Precision = TP / (TP + FP) = 1.00 for Healthy, .98 for high risk.

Recall, is the ratio of true positives to the sum of true positives and false negatives (TP+FN). 

It shows how many of the positive predictions were actually correct.




