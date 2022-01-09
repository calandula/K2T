from transformers import AutoModelWithLMHead, AutoTokenizer, Trainer, TrainingArguments, TextDataset, DataCollatorForLanguageModeling
from transformers import AutoTokenizer, AutoModelForSeq2SeqLM
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

train_names = ["FootballCommentariesGoalsTrain.jsonl", "FootballCommentariesRedCardsTrain.jsonl", "FootballCommentariesSubsTrain.jsonl", "FootballCommentariesYellowCardsTrain.jsonl"]
test_names = ["FootballCommentariesGoalsTest.jsonl", "FootballCommentariesRedCardsTest.jsonl", "FootballCommentariesSubsTest.jsonl", "FootballCommentariesYellowCardsTest.jsonl"]

data_files_train = [train_path + file_name for file_name in train_names]
data_files_test = [train_path + file_name for file_name in test_names]

dataset = load_dataset('json', data_files=data_files_train, split='train[:100]+validation[:100]')

# training_args = TrainingArguments(
#     output_dir="./GPT2Finetuned",
#     overwrite_output_dir=True,
#     num_train_epochs=10,
#     per_device_train_batch_size=16,
#     per_device_eval_batch_size=16,
#     gradient_accumulation_steps=4,
#     prediction_loss_only=True
# )
#
# torch.cuda.empty_cache()
# model.to('cuda')




