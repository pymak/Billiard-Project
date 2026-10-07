% Auteurs: Rafaela Rebeiz, Jamil Mansour, Makram Fadel, Kevin Jandri
clear
close all
filename = "T6";
line = ".-";
rgb1 = [100	255	0
];
rgb2 = [255	0	0
];
Xr=[NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,263,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,270,270,270,270,270,269,268,271,270,270,269,269,269,269,269,269,269,269,269,269,269,270,270,270,270,270,270,270,270,270,270,270,270,270,270,270,270,270,270,270,269,270,270,270,270,270,270,270,270,270,270,270,270,270,270,270,270,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269
];
Yr=[NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,102,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,102,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103,103
];
Xy=[243,243,259,278,290,302,323,332,342,351,369,376,384,392,408,416,424,432,448,456,463,471,487,496,505,515,533,543,552,562,580,589,598,607,625,634,643,652,670,679,688,697,715,724,723,715,703,697,692,687,678,673,668,663,653,648,644,639,628,623,618,612,602,597,592,587,577,572,566,561,551,546,541,537,527,522,517,512,503,497,493,488,478,473,468,464,454,449,445,440,431,426,421,417,407,403,398,393,384,380,375,371,362,357,353,348,339,335,331,326,317,313,309,304,296,291,287,283,275,270,266,262,253,249,245,241,235,231,228,225,219,216,213,210,203,200,198,195,189,186,183,180,174,171,168,165,160,157,154,151,146,143,140,138,132,129,127,127,128,129,131,132,135,137,138,139
];
Yy=[344,344,380,392,381,368,344,332,319,307,284,272,259,248,223,211,199,187,163,151,140,128,104,102,111,121,137,145,152,158,171,178,184,190,202,209,215,221,234,241,247,253,265,271,279,286,300,307,314,320,334,341,348,354,368,375,382,388,385,380,376,372,365,361,357,354,347,343,339,335,328,324,321,317,310,306,303,299,292,289,285,282,275,271,268,264,257,254,250,247,240,236,233,229,223,219,216,213,205,202,199,196,189,186,182,179,172,169,166,163,156,153,150,147,140,138,135,131,125,122,119,116,110,107,104,102,103,105,107,108,111,112,114,115,119,120,122,123,126,128,129,130,133,135,136,137,140,142,143,144,147,149,150,151,153,155,156,158,159,160,161,161,163,164,164,165
];
Xw=[235,235,216,205,194,183,162,152,141,132,137,144,151,158,170,179,188,196,214,222,231,239,255,263,271,279,296,304,312,320,336,344,352,360,376,384,392,400,416,424,432,439,455,463,468,474,484,490,495,501,512,517,523,528,539,544,550,555,566,571,576,582,592,597,603,608,618,623,629,634,644,649,654,659,669,675,679,685,695,699,704,709,719,724,726,722,716,714,711,709,704,701,699,696,691,689,686,684,679,677,675,672,668,665,663,661,656,654,652,650,645,643,641,639,635,632,630,628,624,622,620,618,614,612,610,608,604,602,601,599,595,593,591,589,585,583,582,580,577,575,573,571,568,566,564,563,559,558,556,555,552,551,550,548,546,545,544,543,540,539,538,537,534,533,532,531
];
Yw=[375,375,388,364,341,318,274,253,232,212,177,161,146,130,102,112,124,135,156,165,174,182,197,205,213,220,236,243,251,259,274,282,289,297,312,319,327,335,350,357,364,372,387,392,388,382,373,369,365,362,355,351,348,345,338,334,331,327,320,317,314,311,304,300,297,294,287,284,281,277,271,268,264,261,255,251,249,245,239,236,233,229,223,220,218,216,212,210,209,207,203,202,200,198,195,193,191,190,186,184,183,181,178,176,175,173,170,169,167,165,162,161,159,158,155,153,152,150,147,146,144,143,140,139,137,136,133,132,131,129,127,125,124,123,120,119,118,116,114,113,112,110,108,107,106,105,102,102,102,102,102,103,103,104,105,106,106,106,107,108,109,109,111,111,111,112
];


% Main
% Définir les constantes, qui sont elles-mêmes redéfinies par LabVIEW.

                                     
SeqDateTime = datetime('now');       
MoveDistPx = 9;                                     
BallBorderDist = 9;
COLOR_R = 'r';
COLOR_Y = [0.9 0.8 0.2];   % Le jaune par défaut de MATLAB n'est pas très agréable à voir sur un fond blanc.
COLOR_W = 'b';             % La balle blanche est de couleur bleue. 



                                  
Color_touch_win = rgb1 / 255;
Color_touch_loose = rgb2 / 255;   % On divise par 255 pour pouvoir utiliser ces couleurs.


% Nettoyer les données (NaN et Outliers)

[Xr, Yr] = InterpolateNan(Xr, Yr);
[Xy, Yy] = InterpolateNan(Xy, Yy);
[Xw, Yw] = InterpolateNan(Xw, Yw);

[Xr, Yr] = RemoveOutlier(Xr, Yr);
[Xy, Yy] = RemoveOutlier(Xy, Yy);
[Xw, Yw] = RemoveOutlier(Xw, Yw);     


% Calculer le cadre 

[Xmin, Xmax, Ymin, Ymax] = GetFrame(Xr, Yr, Xy, Yy, Xw, Yw);

% Calculer les longueurs de trajet

PathR = GetBallPathLength(Xr, Yr);
PathY = GetBallPathLength(Xy, Yy);
PathW = GetBallPathLength(Xw, Yw);



% Calculer l'ordre de mouvement

[FirstBall, SecondBall, LastBall, NbBallsMoved] = GetBallMoveOrder(Xr, Yr, Xy, Yy, Xw, Yw, MoveDistPx); 

disp(' ');
disp('Ordre de mouvement : ')
disp(' ');
disp('FirstBall = ');
disp(FirstBall);

disp('SecondBall = ');
disp(SecondBall);                % Si une balle ne bouge pas, valeur = 0 
                                 % Convention :   
disp('LastBall = ');             % Red = 1 Yellow = 2 White = 3
disp(LastBall);

disp('NbBallsMoved = ');
disp(NbBallsMoved);



% Get first move idx of each ball

firstmoveR = GetFirstMoveIdx(Xr, Yr, MoveDistPx);
firstmoveY = GetFirstMoveIdx(Xy, Yy, MoveDistPx);      % Note: On suppose que par exemple la balle jaune (FirstBall) touche la rouge a firstmoveR 
firstmoveW = GetFirstMoveIdx(Xw, Yw, MoveDistPx);            % et la blanche à firstmoveW, donc une 2nd ball et 3rd ball ne bouge que lorsqu'elles
                                                             % sont touchées par 1st Ball
                                                             
                                                             
disp('Indices first move : ');
disp(' ');
disp('Red = ');
disp(firstmoveR);
disp('Yellow = ');                 % Si une balle ne bouge pas, valeur = []
disp(firstmoveY);
disp('White = ');
disp(firstmoveW);


% Trouver la première boule à bouger
% Name1 is the first ball that moved

if FirstBall == 1
    Name1 = 'red';
    Name1txt = 'r';
elseif FirstBall == 2
    Name1 = 'yellow';   
    Name1txt = 'y';
elseif FirstBall == 3
    Name1 = 'white';
    Name1txt = 'w';
else 
    Name1 = 'No ball moved'; % cas où aucune balle ne bouge
    Name1txt ='N/A';
end


% Trouver TOUS les points de chocs 
if strcmp(Name1, 'red')  % strcmp() check si Name1 = 'red'
    touch = GetTouchIdx(Xr, Yr, Xmin, Xmax, Ymin, Ymax, BallBorderDist);      % GetTouchIdx prend TOUS les rebonds.
    
elseif strcmp(Name1, 'yellow')
    touch = GetTouchIdx(Xy, Yy, Xmin, Xmax, Ymin, Ymax, BallBorderDist);       
                                                                             
elseif strcmp(Name1, 'white')
    touch = GetTouchIdx(Xw, Yw, Xmin, Xmax, Ymin, Ymax, BallBorderDist);

else
    touch = [];   % si aucune balle ne bouge, pour pas avoir de errors après dans les plots
end


disp('Touch idexes with no filtering (TOTAL TOUCHES) = ');
disp(touch);
    

% Test si la balle Win or Lose



if NbBallsMoved < 3    
    WinLose = '---Lose---';       % Notre convention : Si pas toutes les balles bouges (donc Lose), on va juste prendre TOUS LES REBONDS de la boule, on ne filtre pas touch.
    WinLosetxt = 'l';

    touch_nb = numel(touch);

    disp('Number of Touches TOTAL (cas où NbBallsMoved < 3, no filtering)  = ');
    disp(touch_nb);

    % disp (touch) pas nécessaire car déjà fait en haut, et touch reste le
    % même

else                       % On suppose donc ici que toutes les boules bougent, donc on filtre touch : on ne garde que les indices entre les indices de SecondBall et LastBall
    if FirstBall == 1 
        if SecondBall == 2
            touch = touch(touch >= firstmoveY & touch <= firstmoveW);
        else 
            touch = touch(touch >= firstmoveW & touch <= firstmoveY);         
        end
    
    elseif FirstBall == 2
        if SecondBall == 1
            touch = touch(touch >= firstmoveR & touch <= firstmoveW);         
        else
            touch = touch(touch >= firstmoveW & touch <= firstmoveR);
        end
    
    elseif FirstBall == 3 
        if SecondBall == 1
            touch = touch(touch >= firstmoveR & touch <= firstmoveY);
        else
            touch = touch(touch >= firstmoveY & touch <= firstmoveR);
        end
    end
    
    disp('Touch filtered = ');                 % Ici on n'a pas touch TOTAL, mais touch entre 2ème et 3ème boule
    disp(touch);

    touch_nb = numel(touch);            
    
    disp('Number of Touch filtered = ');       % Nombre de touch entre 2ème et 3ème boule
    disp(touch_nb);
    
    if touch_nb >= 3
        WinLose = '---Win---';
        WinLosetxt = 'w';
    else
        WinLose = '---Lose---';               % plus robuste, pas de risque de unrecognised variable
        WinLosetxt = 'l';
    end
end


    

% Note: On suppose que la SecondBall et LastBall bouge seulement lorsque
% la FirstBall les touche.

% Voir aussi documentation pour les choix de touch et touch_nb selon les
% cas


    

% 4. CRÉATION DU GRAPHIQUE

fig = figure('Name', 'ScoreSheet', 'Color', 'w');    % pour voir résultat directement sur MatLab
hold on;

% Tracer les trajectoires
plot(Xr, 480 - Yr, line , 'Color', COLOR_R, 'LineWidth', 1);                          
plot(Xy, 480 - Yy, line , 'Color', COLOR_Y, 'LineWidth', 1);                          
plot(Xw, 480 - Yw, line , 'Color', COLOR_W, 'LineWidth', 1);

% Tracer le cadre du billard
W = Xmax - Xmin;
H = Ymax - Ymin;
rectangle('Position', [Xmin, 480 - Ymax, W, H], 'EdgeColor', 'b', 'LineWidth', 1);

% Tracer les étoiles de position initiale
plot(Xr(1), 480 - Yr(1), 'hexagram', 'MarkerSize', 15, 'MarkerEdgeColor', 'k');
plot(Xy(1), 480 - Yy(1), 'hexagram', 'MarkerSize', 15, 'MarkerEdgeColor', 'k');     
plot(Xw(1), 480 - Yw(1), 'hexagram', 'MarkerSize', 15, 'MarkerEdgeColor', 'k');




% Tracer les chocs (cercles)

if strcmp(WinLose, '---Win---')

    if strcmp(Name1, 'red')
        plot(Xr(touch), 480 - Yr(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_win, 'LineWidth', 1);
    
    elseif strcmp(Name1, 'yellow')
        plot(Xy(touch), 480 - Yy(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_win, 'LineWidth', 1);  
    
    elseif strcmp(Name1, 'white')
        plot(Xw(touch), 480 - Yw(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_win, 'LineWidth', 1);
    
    end

else                                  % soit on gagne soit ou perd.         Mais elseif inside because we can have Name1 = 'No ball moved'.
    
    if strcmp(Name1, 'red')
        plot(Xr(touch), 480 - Yr(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_loose, 'LineWidth', 1);
    
    elseif strcmp(Name1, 'yellow')
        plot(Xy(touch), 480 - Yy(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_loose, 'LineWidth', 1);  
    
    elseif strcmp(Name1, 'white')
        plot(Xw(touch), 480 - Yw(touch), 'o', 'MarkerSize', 15, 'MarkerEdgeColor', Color_touch_loose, 'LineWidth', 1);
    
    end
end

% Mise en forme du graphique
axis equal; % Assure un ratio 1:1
axis off;   % Cache les axes x/y
set(gca, 'Color', 'w'); % Fond blanc
set(gcf, 'Color', 'w');
set(gcf, 'InvertHardcopy', 'off'); % Garde le fond blanc lors de la sauvegarde, pour empecher de mauvaise surprise

% Le titre
titleStr = sprintf('Scores sheet - %s - (%s)', filename, SeqDateTime);
title(titleStr, 'Color', 'k', 'FontSize', 14, 'FontWeight', 'bold');

% Ajouter les annotations de texte (en bas)
Y_txt_line1 = Ymax + 10;
Y_txt_line2 = Ymax + 50;
Y_coord1 = 480 - Y_txt_line1;
Y_coord2 = 480 - Y_txt_line2;       %480 - : pour rammener le Y à notre repère classique





winnerStr = sprintf('Score sheet for "%s"\n %s', Name1, WinLose);
text(Xmin, Y_coord1, winnerStr, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top');

distStrR = sprintf('red_d:%dpx', round(PathR));
text(Xmin, Y_coord2, distStrR, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top');             

distStrY = sprintf('yellow_d:%dpx', round(PathY));
text(Xmax / 2, Y_coord2, distStrY, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top');

distStrW = sprintf('white_d:%dpx', round(PathW));
text(Xmax, Y_coord2, distStrW, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');

summaryStr = sprintf('%d ball(s) moved\n%d band(s) touched', NbBallsMoved, touch_nb);
text(Xmax, Y_coord1, summaryStr, 'Color', 'k', 'FontSize', 10, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');

hold off;

% 5. SAUVEGARDE DES RÉSULTATS


% Sauvegarder l'image en PDF
PdfFileName = sprintf('ScoreSheet%s.pdf', filename);    
print(fig, PdfFileName, '-dpdf', '-fillpage');
fprintf('Graphique sauvegardé sous le nom : %s\n', PdfFileName);

% Sauvegarder le résumé en TXT
txtFileName = sprintf('Summary%s.txt', filename);
fid = fopen(txtFileName, 'w');
if fid == -1
    error('Impossible de créer le fichier TXT.');
end



fprintf(fid, 'f:%s; ',Name1txt);
fprintf(fid, 's:%s; ',WinLosetxt);
fprintf(fid, 'n:%d; ',NbBallsMoved);
fprintf(fid, 'b:%d; ',touch_nb);
fprintf(fid, 'rb:%d; ',round(PathR));
fprintf(fid, 'yb:%d; ',round(PathY));
fprintf(fid, 'wb:%d; ',round(PathW));



fclose(fid);
fprintf('Résumé sauvegardé sous le nom : %s\n', txtFileName);



% ########################################################################
%
%  DEFINITION DES FONCTIONS LOCALES
%
% ########################################################################


% EXO 4
function [X, Y] = InterpolateNan(X,Y)
    added_start = false;
    added_end = false;    % on ajoute au début ou à la fin un zéro pour éviter les problèmes de bords.
    if isnan(X(1))
        X = [0 , X];
        Y = [0 , Y];
        added_start = true;
    end
    
    if isnan(X(end))
        X(end + 1) = 0;
        Y(end + 1) = 0;
        added_end = true; 
    end
    
    idx_connus_X = find(~isnan(X));
    
    valeurs_connues_X = X(idx_connus_X);
    
    idx_tous_X = 1:length(X);
    X = interp1(idx_connus_X, valeurs_connues_X, idx_tous_X, 'next');
    
    idx_connus_Y = find(~isnan(Y));
    
    valeurs_connues_Y = Y(idx_connus_Y);
    
    idx_tous_Y = 1:length(Y);
    Y = interp1(idx_connus_Y, valeurs_connues_Y, idx_tous_Y, 'next');
    
    if added_start
        X = X(2:end);
        Y = Y(2:end);
    end
    if added_end
        X = X(1:end-1);
        Y = Y(1:end-1);
    end
    
end


% Note : On considère que le premier élément ne peut pas être un outlier.

function[X,Y] = RemoveOutlier(X, Y)

outlierX = isoutlier(X, 'movmedian', 10);
outlierY = isoutlier(Y, 'movmedian', 10);

outlierX([1 end]) = false;
outlierY([1 end]) = false; 

idx_out_X = find(outlierX);        % done les index ou ya les outliers dans X
X(idx_out_X) = X(idx_out_X - 1);   % remplace valeur outlier par precedente valeur ie (-1)

idx_out_Y = find(outlierY);         % pas de risque de index out of range  car (1) et (end) = false dans le logical array
Y(idx_out_Y) = Y(idx_out_Y - 1);    % pas de problème de faire juste -1 car il n'y a pas de groupe d'outliers.


end



% EXO 2
function [Xmin, Xmax, Ymin, Ymax] = GetFrame(Xr, Yr, Xy, Yy, Xw, Yw)
    all_X = [Xr, Xy, Xw];
    all_Y = [Yr, Yy, Yw];
    
    Xmin = min(all_X);
    Xmax = max(all_X);    %calcul min et max global
    Ymin = min(all_Y);
    Ymax = max(all_Y);
end


function PathLength = GetBallPathLength(X,Y)
    
    norme = sqrt(diff(X).^2 + diff(Y).^2);
    PathLength = sum(norme); 

end



function [FirstMoveIdx, MoveDist] = GetFirstMoveIdx(X, Y, MoveDistPx)
   

    MoveDist = sqrt(diff(X.^2) + diff(Y.^2));    % les segments(distances) entre chaque positions consécutives, pour utiliser après pour trouver FirstBall
                                                 
                                                 
                                                 
    X = X - X(1);                        % changement de référentiel                                             
    Y = Y - Y(1);
    distance = sqrt(X.^2 + Y.^2);        % ici pas besoin de faire diff() car distance par rapport à X(1) et Y(1), pas entre positions consécutives 
                                                                           
    FirstMoveIdx = find(distance > MoveDistPx, 1 , 'first');   % prend le premier indice tel que la distance > MoveDistPix 
    

end



% EXO 3
function [IdxTouch] = GetTouchIdx(X, Y, Xmin, Xmax, Ymin, Ymax, BallBorderDist)

    idxLeft = find(X - Xmin <= BallBorderDist);
    idxRight = find(Xmax - X <= BallBorderDist);     
    idxTop = find(Y - Ymin <= BallBorderDist);       
    idxBottom = find(Ymax - Y <= BallBorderDist); 

    % Dans cette fonction, il y a 2 choses à checker. Si deux bords sont hit
    % successivement et si deux boules satisfont la condition du find.
    % Ce sont deux cas différents, qu'on ne peut pas checker d'un seul coup.
    % On commence d'abord par checker chaque bord seul si on a des index
    % successifs. Sinon, si je check après tout avoir mis ensemble, je risque
    % de perdre des rebonds sur des bords successifs, qui se feront passer
    % pour des doublons qui satisfont la condition <= BallBorder Dist
   
                                                                                                           
    if ~isempty(idxLeft)                                   
        idxLeft = idxLeft([true, diff(idxLeft) > 1]);      % true, c'est pour ajouter true au vecteur logique au début, comme ça on ne prend que le 1er indice détecté
    end
    if ~isempty(idxRight) 
        idxRight = idxRight([true, diff(idxRight) > 1]);                                                 
    end
    if ~isempty(idxTop) 
        idxTop = idxTop([true, diff(idxTop) > 1]);            
    end
    if ~isempty(idxBottom) 
        idxBottom = idxBottom([true, diff(idxBottom) > 1]);    
    end
               
    [IdxTouch] = [idxLeft idxRight idxTop idxBottom];  % on fusionne le tout
    [IdxTouch] = unique(IdxTouch);  % enlève les doublons éventuels et trie en ordre croissant.            
   
    IdxTouch(IdxTouch == 1) = [];             % On enlève index = 1, car une balle peut déjà être sur le bord au début de la partie.
  
end


                                                     
function [FirstBall,SecondBall,LastBall, NbBallsMoved] = GetBallMoveOrder(Xr, Yr, Xy, Yy, Xw, Yw, MoveDistPx)

    def_idx = [1 2 3];     % red = 1, yellow = 2 , white = 3
    
    [idxR,segsR] = GetFirstMoveIdx(Xr, Yr, MoveDistPx);
    [idxY,segsY] = GetFirstMoveIdx(Xy, Yy, MoveDistPx);        
    [idxW,segsW] = GetFirstMoveIdx(Xw, Yw, MoveDistPx);
    
    len = length(Xr);                       % Longueur de référence
    if isempty(idxR), idxR = len + 1; end
    if isempty(idxY), idxY = len + 1; end   % On donne valeur impossible, et on ne garde pas vide puisque sinon, on ne pourra pas trier par la suite.
    if isempty(idxW), idxW = len + 1; end
    
    d1R = 0;
    d1Y = 0;  % variable pour stocker distance initial parcourue
    d1W = 0;

    % fprintf('idxR=%s, idxY=%s, idxW=%s\n', mat2str(idxR), mat2str(idxY), mat2str(idxW)); 
    
    if ~isempty(segsR), d1R = segsR(1); end      % On garde juste 1er segment / distance initiale parcourue, d'où (1)
    if ~isempty(segsY), d1Y = segsY(1); end      % Si non vide, donne aux variables distance initale parcourue, sinon reste 0
    if ~isempty(segsW), d1W = segsW(1); end
    
    % fprintf('d1R=%.3f, d1Y=%.3f, d1W=%.3f\n', d1R, d1Y, d1W);

    store_idx = [idxR idxY idxW];                                                                           
    store_d1 = [d1R d1Y d1W];                 
                                                 % sortrows() : On utilise le tri des élements des colonnes pour bouger les lignes de la matrice                                                                  
    M = [store_idx(:) store_d1(:) def_idx(:)];   % Tri d'abord selon la colonne 1 dans l'ordre croissant, boule qui bouge en premier a le plus petit indice et donc est au début de la colonne 1     
    M = sortrows(M, [1 -2]);                     % Ensuite, si deux lignes on la même valeur dans la colonne 1 i.e: on a le meme indice, alors on trie encore la matrice suivant la 2eme colonne
                                                 % Et dans ce cas, les seules lignes qui bougent sont celles où dans la colonne 1 y'a eu une égalité
                                                 
                                                 % Le - c'est juste pour
                                                 % trier dans l'ordre
                                                 % décroissant les
                                                 % distances initiales, car
                                                 % on veut la plus grande
                                                 % distance initiale
                                                 % parcourue.



    moved_idx = M(M(:,1) <= len, 3).'; % Filtre en utilisant len (et donc len + 1 impossible d'être pris) pour enfin trouver l'ordre des boules
    NbBallsMoved = numel(moved_idx);


    %disp(moved_idx);
    %disp(d1R);                        
    %disp(d1Y);           % to test intermediate values
    %disp(d1W);

    FirstBall = 0; SecondBall = 0; LastBall = 0;
    
    if NbBallsMoved >= 1, FirstBall = moved_idx(1); end     
    if NbBallsMoved >= 2, SecondBall = moved_idx(2); end
    if NbBallsMoved >= 3, LastBall = moved_idx(3); end
   
end



% Version 26 Decembre 10:30 PM 