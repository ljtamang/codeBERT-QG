#!/bin/bash
cd code
#lang=java #programming language
lr=5e-5
batch_size=64
beam_size=10
#source_length=404 #when input is answer + comment + code
source_length=344 #when input is answer + comment
#source_length=344 #when input is answer + code
target_length=52
data_dir=../data
output_dir=../output/$2
train_file=$data_dir/train/
dev_file=$data_dir/dev/
test_file=$data_dir/test/
epochs=20
pretrained_model=microsoft/codebert-base #Roberta: roberta-base

CUDA_VISIBLE_DEVICES=$1 python run.py \
    --model_type roberta \
    --model_name_or_path $pretrained_model \
    --train_filename $train_file \
    --dev_filename $dev_file \
    --test_filename $test_file \
    --output_dir $output_dir \
    --max_source_length $source_length \
    --max_target_length $target_length \
    --beam_size $beam_size \
    --train_batch_size $batch_size \
    --eval_batch_size $batch_size \
    --learning_rate $lr \
    --num_train_epochs $epochs \
    --do_train \
    --do_eval \
    --do_test 
