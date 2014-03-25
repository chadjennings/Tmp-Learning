function dataOut = AddRowBelow(dataIn, row, index);
% function dataOut = AddRowBelow(dataIn, row, index);
% This function generates a new matrix, dataOut, with an additional row of
% data inserted.  The additional row will be at row number index+1 in
% dataOut.
%  Chad Jennings
%  16 December 2010

[m,n] = size(dataIn);

if (index < 0) 
     error('Utilities/AddRowBelow:  index is too small input matrix')
elseif(index > m)
    error('Utilities/AddRowBelow:  index is too big for input matrix')
end

if index == m  % if we are adding a new last row then just tack it on the bottom
    dataOut = [dataIn;row];
else  %  if index < m
    dataOutTop = dataIn(1:index,:);
    dataOutBottom = dataIn(index+1:end,:);
    dataOut = [dataOutTop; row; dataOutBottom];
end


