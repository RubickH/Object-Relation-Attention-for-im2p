python train.py \
    --input_att_dir '/2t/ylc/VG/parabu_att' \
    --input_fc_dir '/2t/ylc/VG/parabu_fc' \
    --sg_dir '/shared_home/ylc/vg_data/data_tools/1600-50' \
    --w2v '/2t/ylc/word/w2v.npy' \
    --para_json '/2t/ylc/VG_paragraph/paragraphs_v1.json' \
    --input_json '/2t/ylc/image-paragraph-captioning/data/paratalk.json' \
    --input_label_h5 '/2t/ylc/image-paragraph-captioning/data/paratalk_label.h5' \
    --batch_size 10 \
    --learning_rate 5e-4 \
    --learning_rate_decay_start 0 \
    --scheduled_sampling_start 0 \
    --save_checkpoint_every 2000 \
    --language_eval 1 \
    --val_images_use 5000 \
    --max_epochs 200 \
    --self_critical_after 0 \
    --cached_tokens para-train-idxs \
    --cider_reward_weight 1 \
    --bleu_reward_weight 0.5 \
    --meteor_reward_weight 0.5 \
    --block_trigrams 1 \
    --start_from '/2t/ylc/im2p/log_xe_2lay' \
    --checkpoint_path '/2t/ylc/im2p/log_sc_2lay_mix2' \
    --pretrain_rel $3 \
    --print_freq 200 \
    --fc_feat_size 2048 \
    --att_feat_size 2048 \
    --load_model $1 \
    --load_gcn $2 \
    --do-avg-feat \
    --gcn_layers 1
#--caption_model topdown \