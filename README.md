# codeBERT-QG

## Finetuning codeBERT for Question Generation

### Dependency

- pip install torch
- pip install transformers
- pip install nltk 
- pip install psutil

### Data

You can download data from [Google Drive](https://drive.google.com/drive/folders/1YYKW5gfXJ1N6E0ga-gbNXRJ5ZZrz33UM?usp=sharing). Unzip it and move it to `./data`.  

### Train 

We fine-tune the model on 3*1080Ti GPUs.

Please run the following scripts:

`bash java_script.sh [gpu-id] [model-name]`


### Inference

After the training process, several best checkpoints are stored in a folder named after your model name, for example, `./output/[model-name]/checkpoint-best-bleu/pytorch_model.bin`. You can run the following scripts to get the results on test set:

`bash java_script_test.sh [gpu-id] [model-name]`


### Pretrained Model

Java pre-trained models (20 epochs) are available [here](https://drive.google.com/drive/folders/1AnTlylVmsb9MLZWz9zxNetwASwd543o7?usp=sharing).
