% Auteurs: Rafaela Rebeiz, Jamil Mansour, Makram Fadel, Kevin Jandri
clear
close all
filename = "T9";
line = ".-";
rgb1 = [100	255	0
];
rgb2 = [255	0	0
];
Xr=[267,267,266,255,251,241,235,227,223,215,211,203,199,192,188,184,183,181,179,177,175,173,174,169,168,165,165,163,161,159,157,155,153,151,149,147,145,143,143,140,139,137,137,135,135,134,134,132,131,131,130,129,128,127,127,129,129,129,130,129,130,131,131,131,131,133,133,134,134,135,135,136,136,136,136,137,137,138,138,139,139,139,140,141,140,141,141,142,143,143,143,143,144,144,144,145,145,146,146,146,147,147,147,147,147,147,147,147,147,148,149,149,149,149,149,149,150,150,150,151,151,151,151,151,151,151,151,151,151,152,152,152,152,152,152,152,153,153,152,153,153,153,153,153,154,153
];
Yr=[103,103,103,131,151,187,206,239,255,283,299,327,341,371,385,379,369,349,339,323,315,299,291,277,271,255,249,235,227,211,205,191,183,169,163,149,141,127,121,107,101,112,116,125,128,135,141,149,151,159,163,171,175,182,186,193,195,203,207,213,217,223,227,234,237,243,247,253,257,263,267,273,276,282,285,291,294,300,303,309,313,318,321,327,329,335,338,343,347,352,355,359,363,368,371,375,379,383,387,390,390,390,390,387,385,383,382,379,378,375,373,371,370,367,367,363,363,361,359,357,355,353,353,351,349,347,347,345,344,343,341,340,339,337,337,335,335,333,333,331,330,329,328,327,327,325
];
Xy=[712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,127,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,712,713,716,718,721,722,725,726,724,724,722,721,720,719,718,717,716,715,714,714,713,712,711,710,709,709,708,708,707,706,705
];
Yy=[313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,286,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,313,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,314,313,312,310,309,308,307,306,305,304,303,303,302,301,301,300,299,299,298,298,297,297,296,295,295,294,294,294,293,293,292
];
Xw=[251,251,267,316,342,394,419,469,493,539,563,609,632,678,701,721,694,657,639,606,590,560,546,520,508,485,473,451,439,417,405,383,371,348,337,314,302,279,268,245,234,211,200,177,166,144,132,139,148,164,171,183,189,201,207,219,225,237,243,254,260,272,278,289,295,307,312,324,330,341,347,358,364,375,380,392,397,408,413,424,430,441,446,457,462,473,478,489,494,505,510,520,526,536,541,551,556,566,572,581,587,597,602,612,616,626,631,641,646,655,660,670,675,684,689,698,702,707,710,716,718,724,726,725,723,720,719,716,715,711,709,705,703,699,697,694,692,688,686,683,681,677,675,672,670,667
];
Yw=[152,151,121,100,107,119,125,135,140,147,151,157,160,167,170,177,191,211,220,238,248,266,274,291,300,317,325,342,350,367,375,390,390,378,373,364,359,351,347,338,333,324,320,311,308,299,295,283,276,264,258,246,240,227,222,210,204,192,186,174,168,156,150,139,133,121,116,104,101,110,113,120,123,129,133,139,143,149,152,158,162,168,171,177,181,187,190,196,199,206,208,215,218,224,227,233,236,242,245,251,254,259,262,268,271,277,280,286,288,294,297,303,305,311,314,319,323,330,334,342,345,353,356,364,367,375,378,385,389,390,388,385,383,379,377,373,371,367,365,362,360,356,354,351,349,345
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