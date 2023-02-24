function cc = largest_cc(roi)
% returns the largest connected component of a ROI
% Arguments
%     roi: ROI as 3D logical array
% Returns
%     cc: largest connected component of ROI

s = bwconncomp(roi);
[~,ix] = max(cellfun(@numel,s.PixelIdxList));
inds = s.PixelIdxList{ix};
cc = false(size(roi));
cc(inds) = true;

end
