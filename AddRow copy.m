function dataOut = AddRow(data, row, rowNum)
% function dataOut = AddRow(data, rowNum)
% adds the row just after rowNum where rowNum follows Matlab's
% numbering scheme,  Starting at 1.
% if dataIn is m by n then dataOut is (m+1) by n

[m,n] = size(data);

if (rowNum < 0) 
     error('Utilities/RemoveRow:  rowNum is too small input matrix')
elseif(rowNum > m)
    error('Utilities/RemoveRow:  rowNum is too big for input matrix')
end

if rowNum == 1
    dataOut = 
elseif rowNum == m
    
else

    
end