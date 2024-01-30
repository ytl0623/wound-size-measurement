clear ; clc ;

fixed = imread( 'C:\Users\ytlWin\Downloads\wound_size_testdata\2.jpg' ) ;

moving = imread( 'C:\Users\ytlWin\Downloads\wound_size_testdata\1.jpg' ) ;

cpselect( 'C:\Users\ytlWin\Downloads\wound_size_testdata\2.jpg', 'C:\Users\ytlWin\Downloads\wound_size_testdata\1.jpg' ) ;

tform = cp2tform( movingPoints, fixedPoints, "projective" ) ;

moving_images = imtransform( moving, tform ) ;  % aX=b

imshow( moving_images )