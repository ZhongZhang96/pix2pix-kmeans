training command:

CUDA_VISIBLE_DEVICES=3 python pix2pix_zZ.py --mode train \
                     --output_dir output/big_data \
                     --max_epochs 1000 \
                     --input_dir /data/data/233/cart4_combined \
                     --which_direction AtoB

CUDA_VISIBLE_DEVICES=3 python pix2pix_zZ.py --mode train \
                     --output_dir output/big_data1 \
                     --max_epochs 1000 \
                     --input_dir /data/data/233/cart4_combined \
                     --which_direction AtoB \
                     --kmeans_iters 20 \
                     --num_cluster 7

CUDA_VISIBLE_DEVICES=3 python pix2pix_zZ2.py --mode train \
                     --output_dir output/big_data2 \
                     --max_epochs 1000 \
                     --input_dir /data/data/233/cart4_combined \
                     --which_direction AtoB \
                     --kmeans_iters 20 \
                     --num_cluster 7 \
                     --color_weight 100 \
                     --structure_weight 100

CUDA_VISIBLE_DEVICES=1 python pix2pix_zZ3.py --mode train \
                     --output_dir output/big_data3 \
                     --max_epochs 1000 \
                     --input_dir /data/data/zZ/mixed \
                     --which_direction AtoB \
                     --use_lsgan \
                     --num_cluster 10 \
                     --color_weight 1000 \
                     --structure_weight 100

testing command:

CUDA_VISIBLE_DEVICES=0 python pix2pix_zZ.py --mode test \
                                            --output_dir test/result \
                                            --input_dir test/images \
                                            --checkpoint output/big_data 

CUDA_VISIBLE_DEVICES=0 python pix2pix_zZ.py --mode test \
                                            --output_dir test/result1 \
                                            --input_dir test/images \
                                            --checkpoint output/big_data1 \
                                            --kmeans_iters 20 \
                                            --num_cluster 7

CUDA_VISIBLE_DEVICES=2 python pix2pix_zZ2.py --mode test \
                                            --output_dir test/result2 \
                                            --input_dir test/images \
                                            --checkpoint output/big_data2 \
                                            --kmeans_iters 20 \
                                            --num_cluster 7

CUDA_VISIBLE_DEVICES=3 python pix2pix_zZ3.py --mode test \
                                            --output_dir test/result3 \
                                            --input_dir test/images \
                                            --checkpoint output2 \
                                            --num_cluster 10