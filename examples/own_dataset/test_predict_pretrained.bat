REM gpu id given from first argument, default value is -1
SET gpu=-1
SET method=nfp 
SET smiles=%1
REM Add chainer_chemistry directory to PYTHONPATH

REM python train_own_dataset.py --datafile dataset_train.csv --method %method% --label value1 value2 --gpu %gpu% --out eval_%method%

python predict_own_dataset.py --method %method% --label value1 value2 --gpu %gpu% --in-dir eval_%method% --out eval_%method% --predict %smiles%
