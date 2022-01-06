import torch.cuda
from transformers import AutoModelWithLMHead, AutoTokenizer, Trainer, TrainingArguments, TextDataset, DataCollatorForLanguageModeling
from transformers import AutoTokenizer, AutoModelForSeq2SeqLM
from torch import nn
from datasets import load_dataset


class GPT2Trainer(Trainer):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    # def compute_loss(self, model, inputs):
    #     output = model.generate(inputs)
    #     text = tokenizer.decode(output)
    #     custom_loss = 1
    #     return custom_loss


tokenizer = AutoTokenizer.from_pretrained("gpt2")

model = AutoModelWithLMHead.from_pretrained("gpt2")

train_path = './data/guide_context/'

data_names = ["FootballCommentariesGoals.jsonl", "FootballCommentariesRedCards.jsonl", "FootballCommentariesSubs.jsonl", "FootballCommentariesYellowCards.jsonl"]

data_files = [train_path + file_name for file_name in data_names]

dataset = load_dataset('json', data_files=data_files)

training_args = TrainingArguments(
    output_dir="./GPT2Finetuned",
    overwrite_output_dir=True,
    num_train_epochs=10,
    per_device_train_batch_size=16,
    per_device_eval_batch_size=16,
    gradient_accumulation_steps=4,
    prediction_loss_only=True
)

torch.cuda.empty_cache()
model.to('cuda')




