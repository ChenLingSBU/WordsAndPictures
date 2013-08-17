function SM = f(B,A,type)
%
% SM = score(B,A,type)
%
% computes score ("similarity") matrix for A(N-by-M0) and B(N-by-M1)
% by matching B (probe) against A (gallery) into a M1-by-M0 score matrix
%
% type = 0  (default)  Eulcidean     |Aj-Bj|^2
% type = 1             Cosine-Angle  <Aj,Bj>/sqrt[<Aj,Aj>*<Bj,Bj>]
% type = 2             Dot-Product   <Aj,Bj>
%
%
% NOTE: uses superfast array operations

SA = size(A);
SB = size(B);
if SA(1)~=SB(1)
  disp(' ')
  disp(['ERROR: column dimensions do not match!'])
  return
end

% default type = Euclidean
if nargin<3
  type = 0;
end

% compute dot-product 
AB = A'*B;

if type==2
  SM = AB';
  return
end

% compute self-norms 
AA = sum(A.*A);
BB = sum(B.*B);

%disp(' ')
if type==0
  % Euclidean
  %disp('Euclidean')
  SM = repmat(AA',[1 size(BB,2)]) + repmat(BB,[size(AA,2) 1]) - 2*AB;
else
  % COSINE ANGLE
  %disp('Dot Product')
  SM = AB ./ sqrt(AA'*BB);
end

SM = SM';


