# Working with MaChAmp

The [github repository](https://github.com/machamp-nlp/machamp/blob/master/README.md) includes information about how to install and run models.
Most likely, what you will play around with is the dataset that you give it for fine-tuning. The README file works with `configs/ewt.json`, telling the model to fine-tune on the EWT corpus that you can find in `data/ewt.train` and `data/ewt.dev`. You will likely need to create a new similar file and pass it as argument to the training command. For example, if you work with POS tagging with Universal Dependencies, you can copy `configs/ewt.upos.json` to a new file and modify the `train_data_path` as well as `dev_data_path` lines.

Another file that you might want to modify is `configs/params.json`. Notably, the first line, `transformer_model`, specified the pretrained language model. In this case, it uses mBERT. You can replace this line with any model from [HuggingFace](https://huggingface.co/models).

