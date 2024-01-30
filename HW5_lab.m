clear ; clc ;

fixed = imread( 'C:\Users\User\Downloads\wound_size_testdata\2.jpg' ) ;

moving = imread( 'C:\Users\User\Downloads\wound_size_testdata\1.jpg' ) ;

cpselect( 'C:\Users\User\Downloads\wound_size_testdata\2.jpg', 'C:\Users\User\Downloads\wound_size_testdata\3.jpg' ) ;

tform = cp2tform( movingPoints, fixedPoints, "projective" ) ;

moving_images = imtransform( moving, tform ) ;  % aX=b

imwrite( moving_images, "1+2.jpg" )
