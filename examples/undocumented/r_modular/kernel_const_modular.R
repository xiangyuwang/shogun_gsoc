library(shogun)

fm_train_real <- as.matrix(read.table('../data/fm_train_real.dat'))
fm_test_real <- as.matrix(read.table('../data/fm_test_real.dat'))

# const
print('Const')

feats_train <- RealFeatures(fm_train_real)
feats_test <- RealFeatures(fm_test_real)
c <- 23.

kernel <- ConstKernel(feats_train, feats_train, c)

km_train <- kernel$get_kernel_matrix()
dump <- kernel$init(kernel, feats_train, feats_test)
km_test <- kernel$get_kernel_matrix()
